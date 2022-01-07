
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct of_device_id {scalar_t__ data; } ;
struct fsl_ssi {int has_ipg_clk_name; int synchronous; int use_dma; int fifo_depth; int use_dual_fifo; int card_idx; int * card_name; int dai_fmt; scalar_t__ soc; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef int __be32 ;


 int EINVAL ;
 int FSLSSI_AC97_DAIFMT ;
 scalar_t__ IMX_DMATYPE_SSI_DUAL ;
 int be32_to_cpup (int const*) ;
 int dev_err (struct device*,char*) ;
 int fsl_ssi_ids ;
 int make_lowercase (int *) ;
 struct device_node* of_find_node_by_path (char*) ;
 int of_find_property (struct device_node*,char*,int *) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_node_put (struct device_node*) ;
 int of_property_match_string (struct device_node*,char*,char*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int of_property_read_u32_array (struct device_node*,char*,scalar_t__*,int) ;
 int snprintf (int *,int,char*,char const*) ;
 int strcmp (char const*,char*) ;
 int strcpy (int *,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int fsl_ssi_probe_from_dt(struct fsl_ssi *ssi)
{
 struct device *dev = ssi->dev;
 struct device_node *np = dev->of_node;
 const struct of_device_id *of_id;
 const char *p, *sprop;
 const __be32 *iprop;
 u32 dmas[4];
 int ret;

 of_id = of_match_device(fsl_ssi_ids, dev);
 if (!of_id || !of_id->data)
  return -EINVAL;

 ssi->soc = of_id->data;

 ret = of_property_match_string(np, "clock-names", "ipg");

 ssi->has_ipg_clk_name = ret >= 0;


 sprop = of_get_property(np, "fsl,mode", ((void*)0));
 if (sprop && !strcmp(sprop, "ac97-slave")) {
  ssi->dai_fmt = FSLSSI_AC97_DAIFMT;

  ret = of_property_read_u32(np, "cell-index", &ssi->card_idx);
  if (ret) {
   dev_err(dev, "failed to get SSI index property\n");
   return -EINVAL;
  }
  strcpy(ssi->card_name, "ac97-codec");
 } else if (!of_find_property(np, "fsl,ssi-asynchronous", ((void*)0))) {
  ssi->synchronous = 1;
 }


 ssi->use_dma = !of_property_read_bool(np, "fsl,fiq-stream-filter");


 iprop = of_get_property(np, "fsl,fifo-depth", ((void*)0));
 if (iprop)
  ssi->fifo_depth = be32_to_cpup(iprop);
 else
  ssi->fifo_depth = 8;


 ret = of_property_read_u32_array(np, "dmas", dmas, 4);
 if (ssi->use_dma && !ret && dmas[2] == IMX_DMATYPE_SSI_DUAL)
  ssi->use_dual_fifo = 1;
 if (!ssi->card_name[0] && of_get_property(np, "codec-handle", ((void*)0))) {
  struct device_node *root = of_find_node_by_path("/");

  sprop = of_get_property(root, "compatible", ((void*)0));
  of_node_put(root);

  p = strrchr(sprop, ',');
  if (p)
   sprop = p + 1;
  snprintf(ssi->card_name, sizeof(ssi->card_name),
    "snd-soc-%s", sprop);
  make_lowercase(ssi->card_name);
  ssi->card_idx = 0;
 }

 return 0;
}

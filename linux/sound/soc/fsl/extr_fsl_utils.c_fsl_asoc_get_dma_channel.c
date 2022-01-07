
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai_link {TYPE_1__* platforms; } ;
struct resource {scalar_t__ start; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ name; } ;


 int DAI_NAME_SIZE ;
 int EINVAL ;
 unsigned int be32_to_cpup (int const*) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char const*,int ) ;
 int snprintf (char*,int ,char*,unsigned long long,struct device_node*) ;

int fsl_asoc_get_dma_channel(struct device_node *ssi_np,
        const char *name,
        struct snd_soc_dai_link *dai,
        unsigned int *dma_channel_id,
        unsigned int *dma_id)
{
 struct resource res;
 struct device_node *dma_channel_np, *dma_np;
 const __be32 *iprop;
 int ret;

 dma_channel_np = of_parse_phandle(ssi_np, name, 0);
 if (!dma_channel_np)
  return -EINVAL;

 if (!of_device_is_compatible(dma_channel_np, "fsl,ssi-dma-channel")) {
  of_node_put(dma_channel_np);
  return -EINVAL;
 }
 ret = of_address_to_resource(dma_channel_np, 0, &res);
 if (ret) {
  of_node_put(dma_channel_np);
  return ret;
 }
 snprintf((char *)dai->platforms->name, DAI_NAME_SIZE, "%llx.%pOFn",
   (unsigned long long) res.start, dma_channel_np);

 iprop = of_get_property(dma_channel_np, "cell-index", ((void*)0));
 if (!iprop) {
  of_node_put(dma_channel_np);
  return -EINVAL;
 }
 *dma_channel_id = be32_to_cpup(iprop);

 dma_np = of_get_parent(dma_channel_np);
 iprop = of_get_property(dma_np, "cell-index", ((void*)0));
 if (!iprop) {
  of_node_put(dma_np);
  of_node_put(dma_channel_np);
  return -EINVAL;
 }
 *dma_id = be32_to_cpup(iprop);

 of_node_put(dma_np);
 of_node_put(dma_channel_np);

 return 0;
}

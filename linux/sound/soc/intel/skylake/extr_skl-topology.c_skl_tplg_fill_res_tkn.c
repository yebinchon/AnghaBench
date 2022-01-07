
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_tplg_vendor_value_elem {int token; int value; } ;
struct skl_module_res {int ibs; int obs; int is_pages; int cpc; int dma_buffer_size; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,int) ;
 int skl_tplg_manifest_pin_res_tkn (struct device*,struct snd_soc_tplg_vendor_value_elem*,struct skl_module_res*,int,int) ;

__attribute__((used)) static int skl_tplg_fill_res_tkn(struct device *dev,
  struct snd_soc_tplg_vendor_value_elem *tkn_elem,
  struct skl_module_res *res,
  int pin_idx, int dir)
{
 int ret, tkn_count = 0;

 if (!res)
  return -EINVAL;

 switch (tkn_elem->token) {
 case 134:
  res->dma_buffer_size = tkn_elem->value;
  break;

 case 136:
  res->cpc = tkn_elem->value;
  break;

 case 129:
  res->is_pages = tkn_elem->value;
  break;

 case 128:
  res->obs = tkn_elem->value;
  break;

 case 131:
  res->ibs = tkn_elem->value;
  break;

 case 132:
 case 133:
  ret = skl_tplg_manifest_pin_res_tkn(dev, tkn_elem, res,
          pin_idx, dir);
  if (ret < 0)
   return ret;
  break;

 case 135:
 case 130:

  break;

 default:
  dev_err(dev, "Not a res type token: %d", tkn_elem->token);
  return -EINVAL;

 }
 tkn_count++;

 return tkn_count;
}

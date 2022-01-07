
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_tplg_vendor_value_elem {int token; int value; } ;
struct snd_soc_tplg_vendor_array {struct snd_soc_tplg_vendor_value_elem* value; } ;
struct device {int dummy; } ;


 int EINVAL ;



 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int skl_tplg_get_desc_blocks(struct device *dev,
  struct snd_soc_tplg_vendor_array *array)
{
 struct snd_soc_tplg_vendor_value_elem *tkn_elem;

 tkn_elem = array->value;

 switch (tkn_elem->token) {
 case 128:
 case 129:
 case 130:
  return tkn_elem->value;

 default:
  dev_err(dev, "Invalid descriptor token %d\n", tkn_elem->token);
  break;
 }

 return -EINVAL;
}

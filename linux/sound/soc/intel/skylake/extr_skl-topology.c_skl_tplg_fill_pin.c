
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_tplg_vendor_value_elem {int token; int value; } ;
struct snd_soc_tplg_vendor_uuid_elem {int dummy; } ;
struct TYPE_2__ {int mod_uuid; int instance_id; int module_id; } ;
struct skl_module_pin {TYPE_1__ id; } ;
struct device {int dummy; } ;


 int EINVAL ;



 int dev_err (struct device*,char*,int) ;
 int skl_tplg_get_uuid (struct device*,int *,struct snd_soc_tplg_vendor_uuid_elem*) ;

__attribute__((used)) static int skl_tplg_fill_pin(struct device *dev,
   struct snd_soc_tplg_vendor_value_elem *tkn_elem,
   struct skl_module_pin *m_pin,
   int pin_index)
{
 int ret;

 switch (tkn_elem->token) {
 case 129:
  m_pin[pin_index].id.module_id = tkn_elem->value;
  break;

 case 130:
  m_pin[pin_index].id.instance_id = tkn_elem->value;
  break;

 case 128:
  ret = skl_tplg_get_uuid(dev, &m_pin[pin_index].id.mod_uuid,
   (struct snd_soc_tplg_vendor_uuid_elem *)tkn_elem);
  if (ret < 0)
   return ret;

  break;

 default:
  dev_err(dev, "%d Not a pin token\n", tkn_elem->token);
  return -EINVAL;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_tplg_vendor_value_elem {int token; int value; } ;
struct skl_module_res {struct skl_module_pin_resources* output; struct skl_module_pin_resources* input; } ;
struct skl_module_pin_resources {int buf_size; int pin_index; } ;
struct device {int dummy; } ;


 int EINVAL ;




 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int skl_tplg_manifest_pin_res_tkn(struct device *dev,
  struct snd_soc_tplg_vendor_value_elem *tkn_elem,
  struct skl_module_res *res, int pin_idx, int dir)
{
 struct skl_module_pin_resources *m_pin;

 switch (dir) {
 case 131:
  m_pin = &res->input[pin_idx];
  break;

 case 130:
  m_pin = &res->output[pin_idx];
  break;

 default:
  dev_err(dev, "Invalid pin direction: %d\n", dir);
  return -EINVAL;
 }

 switch (tkn_elem->token) {
 case 128:
  m_pin->pin_index = tkn_elem->value;
  break;

 case 129:
  m_pin->buf_size = tkn_elem->value;
  break;

 default:
  dev_err(dev, "Invalid token: %d\n", tkn_elem->token);
  return -EINVAL;
 }

 return 0;
}

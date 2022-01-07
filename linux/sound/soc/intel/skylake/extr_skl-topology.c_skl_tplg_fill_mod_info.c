
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_tplg_vendor_value_elem {int token; int value; } ;
struct skl_module {int nr_interfaces; int nr_resources; int max_output_pins; int max_input_pins; int output_pin_type; int input_pin_type; } ;
struct device {int dummy; } ;


 int EINVAL ;






 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int skl_tplg_fill_mod_info(struct device *dev,
  struct snd_soc_tplg_vendor_value_elem *tkn_elem,
  struct skl_module *mod)
{

 if (!mod)
  return -EINVAL;

 switch (tkn_elem->token) {
 case 131:
  mod->input_pin_type = tkn_elem->value;
  break;

 case 129:
  mod->output_pin_type = tkn_elem->value;
  break;

 case 130:
  mod->max_input_pins = tkn_elem->value;
  break;

 case 128:
  mod->max_output_pins = tkn_elem->value;
  break;

 case 132:
  mod->nr_resources = tkn_elem->value;
  break;

 case 133:
  mod->nr_interfaces = tkn_elem->value;
  break;

 default:
  dev_err(dev, "Invalid mod info token %d", tkn_elem->token);
  return -EINVAL;
 }

 return 0;
}

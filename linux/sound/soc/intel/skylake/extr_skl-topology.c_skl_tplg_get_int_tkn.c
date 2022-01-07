
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_tplg_vendor_value_elem {int token; int value; } ;
struct skl_module_res {int id; int nr_input_pins; int nr_output_pins; } ;
struct skl_module_iface {int fmt_idx; } ;
struct skl_module {struct skl_module_iface* formats; struct skl_module_res* resources; } ;
struct TYPE_3__ {TYPE_2__* astate_cfg; } ;
struct skl_dev {int lib_count; int nr_modules; TYPE_1__ cfg; struct skl_module** modules; } ;
struct skl_astate_param {int kcps; int clk_src; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int count; struct skl_astate_param* astate_table; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SKL_IN_DIR_BIT_MASK ;
 int SKL_MAX_ASTATE_CFG ;
 int SKL_PIN_COUNT_MASK ;
 int dev_err (struct device*,char*,...) ;
 struct skl_module** devm_kcalloc (struct device*,int,int,int ) ;
 void* devm_kzalloc (struct device*,size_t,int ) ;
 int skl_tplg_fill_mod_info (struct device*,struct snd_soc_tplg_vendor_value_elem*,struct skl_module*) ;
 int skl_tplg_fill_res_tkn (struct device*,struct snd_soc_tplg_vendor_value_elem*,struct skl_module_res*,int,int) ;
 int skl_tplg_manifest_fill_fmt (struct device*,struct skl_module_iface*,struct snd_soc_tplg_vendor_value_elem*,int,int) ;
 size_t struct_size (TYPE_2__*,struct skl_astate_param*,int) ;

__attribute__((used)) static int skl_tplg_get_int_tkn(struct device *dev,
  struct snd_soc_tplg_vendor_value_elem *tkn_elem,
  struct skl_dev *skl)
{
 int tkn_count = 0, ret;
 static int mod_idx, res_val_idx, intf_val_idx, dir, pin_idx;
 struct skl_module_res *res = ((void*)0);
 struct skl_module_iface *fmt = ((void*)0);
 struct skl_module *mod = ((void*)0);
 static struct skl_astate_param *astate_table;
 static int astate_cfg_idx, count;
 int i;
 size_t size;

 if (skl->modules) {
  mod = skl->modules[mod_idx];
  res = &mod->resources[res_val_idx];
  fmt = &mod->formats[intf_val_idx];
 }

 switch (tkn_elem->token) {
 case 135:
  skl->lib_count = tkn_elem->value;
  break;

 case 130:
  skl->nr_modules = tkn_elem->value;
  skl->modules = devm_kcalloc(dev, skl->nr_modules,
    sizeof(*skl->modules), GFP_KERNEL);
  if (!skl->modules)
   return -ENOMEM;

  for (i = 0; i < skl->nr_modules; i++) {
   skl->modules[i] = devm_kzalloc(dev,
     sizeof(struct skl_module), GFP_KERNEL);
   if (!skl->modules[i])
    return -ENOMEM;
  }
  break;

 case 152:
  mod_idx = tkn_elem->value;
  break;

 case 148:
  if (astate_table != ((void*)0)) {
   dev_err(dev, "More than one entry for A-State count");
   return -EINVAL;
  }

  if (tkn_elem->value > SKL_MAX_ASTATE_CFG) {
   dev_err(dev, "Invalid A-State count %d\n",
    tkn_elem->value);
   return -EINVAL;
  }

  size = struct_size(skl->cfg.astate_cfg, astate_table,
       tkn_elem->value);
  skl->cfg.astate_cfg = devm_kzalloc(dev, size, GFP_KERNEL);
  if (!skl->cfg.astate_cfg)
   return -ENOMEM;

  astate_table = skl->cfg.astate_cfg->astate_table;
  count = skl->cfg.astate_cfg->count = tkn_elem->value;
  break;

 case 147:
  if (tkn_elem->value >= count) {
   dev_err(dev, "Invalid A-State index %d\n",
    tkn_elem->value);
   return -EINVAL;
  }

  astate_cfg_idx = tkn_elem->value;
  break;

 case 146:
  astate_table[astate_cfg_idx].kcps = tkn_elem->value;
  break;

 case 149:
  astate_table[astate_cfg_idx].clk_src = tkn_elem->value;
  break;

 case 132:
 case 129:
 case 131:
 case 128:
 case 150:
 case 151:
  ret = skl_tplg_fill_mod_info(dev, tkn_elem, mod);
  if (ret < 0)
   return ret;
  break;

 case 145:
  dir = tkn_elem->value & SKL_IN_DIR_BIT_MASK;
  pin_idx = (tkn_elem->value & SKL_PIN_COUNT_MASK) >> 4;
  break;

 case 154:
  if (!res)
   return -EINVAL;

  res->id = tkn_elem->value;
  res_val_idx = tkn_elem->value;
  break;

 case 159:
  if (!fmt)
   return -EINVAL;

  fmt->fmt_idx = tkn_elem->value;
  intf_val_idx = tkn_elem->value;
  break;

 case 161:
 case 160:
 case 162:
 case 134:
 case 133:
 case 136:
 case 153:
 case 155:
  ret = skl_tplg_fill_res_tkn(dev, tkn_elem, res, pin_idx, dir);
  if (ret < 0)
   return ret;

  break;

 case 157:
  if (!fmt)
   return -EINVAL;

  res->nr_input_pins = tkn_elem->value;
  break;

 case 156:
  if (!fmt)
   return -EINVAL;

  res->nr_output_pins = tkn_elem->value;
  break;

 case 143:
 case 140:
 case 144:
 case 138:
 case 142:
 case 139:
 case 137:
 case 141:
 case 158:
  ret = skl_tplg_manifest_fill_fmt(dev, fmt, tkn_elem,
       dir, pin_idx);
  if (ret < 0)
   return ret;
  break;

 default:
  dev_err(dev, "Not a manifest token %d\n", tkn_elem->token);
  return -EINVAL;
 }
 tkn_count++;

 return tkn_count;
}

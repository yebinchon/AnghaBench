
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct snd_soc_tplg_vendor_value_elem {int token; int value; } ;
struct skl_module_res {int dummy; } ;
struct skl_module_iface {int dummy; } ;
struct TYPE_10__ {int caps_size; int set_params; int param_id; } ;
struct TYPE_8__ {int instance_id; } ;
struct skl_module_cfg {int res_idx; int fmt_idx; int time_slot; int core_id; int m_type; int dev_type; int hw_conn_type; int vbus_id; int params_fixup; int converter; int d0i3_caps; int domain; int dma_buffer_size; TYPE_4__ formats_config; TYPE_3__* mod_cfg; TYPE_5__* pipe; TYPE_2__ id; void* m_out_pin; void* m_in_pin; TYPE_1__* module; } ;
struct skl_dev {scalar_t__ nr_modules; } ;
struct device {int dummy; } ;
struct TYPE_11__ {int nr_cfgs; } ;
struct TYPE_9__ {int res_idx; int fmt_idx; } ;
struct TYPE_7__ {int max_input_pins; int max_output_pins; struct skl_module_iface* formats; struct skl_module_res* resources; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_IN_QUEUE ;
 int MAX_OUT_QUEUE ;
 int SKL_IN_DIR_BIT_MASK ;
 int SKL_PIN_COUNT_MASK ;


 int SKL_TKN_MAX ;
 int dev_err (struct device*,char*,int) ;
 void* devm_kcalloc (struct device*,int ,int,int ) ;
 int skl_tplg_add_pipe (struct device*,struct skl_module_cfg*,struct skl_dev*,struct snd_soc_tplg_vendor_value_elem*) ;
 int skl_tplg_fill_pin_dynamic_val (void*,int ,int) ;
 int skl_tplg_fill_pins_info (struct device*,struct skl_module_cfg*,struct snd_soc_tplg_vendor_value_elem*,int,int) ;
 int skl_tplg_fill_pipe_cfg (struct device*,TYPE_5__*,int,int,int,int) ;
 int skl_tplg_fill_pipe_tkn (struct device*,TYPE_5__*,int,int) ;
 int skl_tplg_fill_res_tkn (struct device*,struct snd_soc_tplg_vendor_value_elem*,struct skl_module_res*,int,int) ;
 int skl_tplg_widget_fill_fmt (struct device*,struct skl_module_iface*,int,int,int,int) ;

__attribute__((used)) static int skl_tplg_get_token(struct device *dev,
  struct snd_soc_tplg_vendor_value_elem *tkn_elem,
  struct skl_dev *skl, struct skl_module_cfg *mconfig)
{
 int tkn_count = 0;
 int ret;
 static int is_pipe_exists;
 static int pin_index, dir, conf_idx;
 struct skl_module_iface *iface = ((void*)0);
 struct skl_module_res *res = ((void*)0);
 int res_idx = mconfig->res_idx;
 int fmt_idx = mconfig->fmt_idx;






 if (skl->nr_modules == 0) {
  res = &mconfig->module->resources[res_idx];
  iface = &mconfig->module->formats[fmt_idx];
 }

 if (tkn_elem->token > SKL_TKN_MAX)
  return -EINVAL;

 switch (tkn_elem->token) {
 case 133:
  mconfig->module->max_input_pins = tkn_elem->value;
  break;

 case 130:
  mconfig->module->max_output_pins = tkn_elem->value;
  break;

 case 137:
  if (!mconfig->m_in_pin)
   mconfig->m_in_pin =
    devm_kcalloc(dev, MAX_IN_QUEUE,
          sizeof(*mconfig->m_in_pin),
          GFP_KERNEL);
  if (!mconfig->m_in_pin)
   return -ENOMEM;

  skl_tplg_fill_pin_dynamic_val(mconfig->m_in_pin, MAX_IN_QUEUE,
           tkn_elem->value);
  break;

 case 136:
  if (!mconfig->m_out_pin)
   mconfig->m_out_pin =
    devm_kcalloc(dev, MAX_IN_QUEUE,
          sizeof(*mconfig->m_in_pin),
          GFP_KERNEL);
  if (!mconfig->m_out_pin)
   return -ENOMEM;

  skl_tplg_fill_pin_dynamic_val(mconfig->m_out_pin, MAX_OUT_QUEUE,
           tkn_elem->value);
  break;

 case 129:
  mconfig->time_slot = tkn_elem->value;
  break;

 case 139:
  mconfig->core_id = tkn_elem->value;
  break;

 case 132:
  mconfig->m_type = tkn_elem->value;
  break;

 case 138:
  mconfig->dev_type = tkn_elem->value;
  break;

 case 135:
  mconfig->hw_conn_type = tkn_elem->value;
  break;

 case 177:
  mconfig->id.instance_id =
  tkn_elem->value;
  break;

 case 158:
 case 159:
 case 156:
 case 160:
  ret = skl_tplg_fill_res_tkn(dev, tkn_elem, res, pin_index, dir);
  if (ret < 0)
   return ret;

  break;

 case 143:
  mconfig->vbus_id = tkn_elem->value;
  break;

 case 155:
  mconfig->params_fixup = tkn_elem->value;
  break;

 case 172:
  mconfig->converter = tkn_elem->value;
  break;

 case 171:
  mconfig->d0i3_caps = tkn_elem->value;
  break;

 case 148:
  ret = skl_tplg_add_pipe(dev,
    mconfig, skl, tkn_elem);

  if (ret < 0) {
   if (ret == -EEXIST) {
    is_pipe_exists = 1;
    break;
   }
   return is_pipe_exists;
  }

  break;

 case 151:
  conf_idx = tkn_elem->value;
  break;

 case 150:
 case 146:
 case 147:
 case 145:
 case 149:
 case 157:
  if (is_pipe_exists) {
   ret = skl_tplg_fill_pipe_tkn(dev, mconfig->pipe,
     tkn_elem->token, tkn_elem->value);
   if (ret < 0)
    return ret;
  }

  break;

 case 154:
 case 173:
 case 141:
 case 142:
  if (mconfig->pipe->nr_cfgs) {
   ret = skl_tplg_fill_pipe_cfg(dev, mconfig->pipe,
     tkn_elem->token, tkn_elem->value,
     conf_idx, dir);
   if (ret < 0)
    return ret;
  }
  break;

 case 178:
  mconfig->mod_cfg[conf_idx].res_idx = tkn_elem->value;
  break;

 case 179:
  mconfig->mod_cfg[conf_idx].fmt_idx = tkn_elem->value;
  break;






 case 170:
  dir = tkn_elem->value & SKL_IN_DIR_BIT_MASK;
  pin_index = (tkn_elem->value &
   SKL_PIN_COUNT_MASK) >> 4;

  break;

 case 167:
 case 164:
 case 168:
 case 162:
 case 166:
 case 163:
 case 161:
 case 165:
  ret = skl_tplg_widget_fill_fmt(dev, iface, tkn_elem->token,
    tkn_elem->value, dir, pin_index);

  if (ret < 0)
   return ret;

  break;

 case 152:
 case 153:
 case 128:
  ret = skl_tplg_fill_pins_info(dev,
    mconfig, tkn_elem, dir,
    pin_index);
  if (ret < 0)
   return ret;

  break;

 case 174:
  mconfig->formats_config.caps_size =
   tkn_elem->value;

  break;

 case 175:
  mconfig->formats_config.set_params =
    tkn_elem->value;
  break;

 case 176:
  mconfig->formats_config.param_id =
    tkn_elem->value;
  break;

 case 144:
  mconfig->domain =
   tkn_elem->value;

  break;

 case 169:
  mconfig->dma_buffer_size = tkn_elem->value;
  break;

 case 134:
 case 131:
 case 140:
  break;

 default:
  dev_err(dev, "Token %d not handled\n",
    tkn_elem->token);
  return -EINVAL;
 }

 tkn_count++;

 return tkn_count;
}

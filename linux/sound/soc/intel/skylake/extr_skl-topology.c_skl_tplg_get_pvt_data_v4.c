
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ data; } ;
struct snd_soc_tplg_dapm_widget {TYPE_1__ priv; } ;
struct TYPE_13__ {int caps; int caps_size; int param_id; int set_params; } ;
struct TYPE_9__ {int module_id; int instance_id; } ;
struct skl_module_cfg {TYPE_6__ formats_config; TYPE_5__* module; void* m_out_pin; void* m_in_pin; int time_slot; int hw_conn_type; int dev_type; int vbus_id; int m_type; int converter; int params_fixup; int core_id; TYPE_2__ id; scalar_t__ guid; } ;
struct TYPE_14__ {int caps_size; int caps; int param_id; int set_params; } ;
struct skl_dfw_v4_module {int max_mcps; TYPE_7__ caps; int is_dynamic_out_pin; int out_pin; int is_dynamic_in_pin; int in_pin; int time_slot; int hw_conn_type; int dev_type; int pipe; int mem_pages; int vbus_id; int module_type; int converter; int params_fixup; int out_fmt; int in_fmt; int is_loadable; int max_out_queue; int max_in_queue; int core_id; int obs; int ibs; int instance_id; int uuid; } ;
struct skl_dev {int dummy; } ;
struct device {int dummy; } ;
typedef int guid_t ;
struct TYPE_12__ {int max_output_pins; int max_input_pins; TYPE_4__* resources; TYPE_3__* formats; int loadable; } ;
struct TYPE_11__ {int cpc; int is_pages; int obs; int ibs; } ;
struct TYPE_10__ {int outputs; int inputs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_IN_QUEUE ;
 int MAX_OUT_QUEUE ;
 int dev_dbg (struct device*,char*) ;
 void* devm_kcalloc (struct device*,int ,int,int ) ;
 int devm_kzalloc (struct device*,int ,int ) ;
 int guid_parse (int ,int *) ;
 int memcpy (int ,int ,int ) ;
 int skl_fill_module_pin_info_v4 (int ,void*,int ,int ) ;
 int skl_tplg_add_pipe_v4 (struct device*,struct skl_module_cfg*,struct skl_dev*,int *) ;
 int skl_tplg_fill_fmt_v4 (int ,int ,int ) ;

__attribute__((used)) static int skl_tplg_get_pvt_data_v4(struct snd_soc_tplg_dapm_widget *tplg_w,
        struct skl_dev *skl, struct device *dev,
        struct skl_module_cfg *mconfig)
{
 struct skl_dfw_v4_module *dfw =
    (struct skl_dfw_v4_module *)tplg_w->priv.data;
 int ret;

 dev_dbg(dev, "Parsing Skylake v4 widget topology data\n");

 ret = guid_parse(dfw->uuid, (guid_t *)mconfig->guid);
 if (ret)
  return ret;
 mconfig->id.module_id = -1;
 mconfig->id.instance_id = dfw->instance_id;
 mconfig->module->resources[0].cpc = dfw->max_mcps / 1000;
 mconfig->module->resources[0].ibs = dfw->ibs;
 mconfig->module->resources[0].obs = dfw->obs;
 mconfig->core_id = dfw->core_id;
 mconfig->module->max_input_pins = dfw->max_in_queue;
 mconfig->module->max_output_pins = dfw->max_out_queue;
 mconfig->module->loadable = dfw->is_loadable;
 skl_tplg_fill_fmt_v4(mconfig->module->formats[0].inputs, dfw->in_fmt,
        MAX_IN_QUEUE);
 skl_tplg_fill_fmt_v4(mconfig->module->formats[0].outputs, dfw->out_fmt,
        MAX_OUT_QUEUE);

 mconfig->params_fixup = dfw->params_fixup;
 mconfig->converter = dfw->converter;
 mconfig->m_type = dfw->module_type;
 mconfig->vbus_id = dfw->vbus_id;
 mconfig->module->resources[0].is_pages = dfw->mem_pages;

 ret = skl_tplg_add_pipe_v4(dev, mconfig, skl, &dfw->pipe);
 if (ret)
  return ret;

 mconfig->dev_type = dfw->dev_type;
 mconfig->hw_conn_type = dfw->hw_conn_type;
 mconfig->time_slot = dfw->time_slot;
 mconfig->formats_config.caps_size = dfw->caps.caps_size;

 mconfig->m_in_pin = devm_kcalloc(dev,
    MAX_IN_QUEUE, sizeof(*mconfig->m_in_pin),
    GFP_KERNEL);
 if (!mconfig->m_in_pin)
  return -ENOMEM;

 mconfig->m_out_pin = devm_kcalloc(dev,
    MAX_OUT_QUEUE, sizeof(*mconfig->m_out_pin),
    GFP_KERNEL);
 if (!mconfig->m_out_pin)
  return -ENOMEM;

 skl_fill_module_pin_info_v4(dfw->in_pin, mconfig->m_in_pin,
        dfw->is_dynamic_in_pin,
        mconfig->module->max_input_pins);
 skl_fill_module_pin_info_v4(dfw->out_pin, mconfig->m_out_pin,
        dfw->is_dynamic_out_pin,
        mconfig->module->max_output_pins);

 if (mconfig->formats_config.caps_size) {
  mconfig->formats_config.set_params = dfw->caps.set_params;
  mconfig->formats_config.param_id = dfw->caps.param_id;
  mconfig->formats_config.caps =
  devm_kzalloc(dev, mconfig->formats_config.caps_size,
        GFP_KERNEL);
  if (!mconfig->formats_config.caps)
   return -ENOMEM;
  memcpy(mconfig->formats_config.caps, dfw->caps.caps,
         dfw->caps.caps_size);
 }

 return 0;
}

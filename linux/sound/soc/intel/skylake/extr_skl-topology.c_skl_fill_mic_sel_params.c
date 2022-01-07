
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_specific_cfg {int caps_size; int param_id; scalar_t__ caps; int set_params; } ;
struct skl_module_cfg {struct skl_specific_cfg formats_config; } ;
struct skl_mic_sel_config {scalar_t__ flags; int mic_switch; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SKL_MIC_SEL_SWITCH ;
 int SKL_PARAM_SET ;
 scalar_t__ devm_kzalloc (struct device*,int,int ) ;
 int memcpy (scalar_t__,struct skl_mic_sel_config*,int) ;

__attribute__((used)) static int skl_fill_mic_sel_params(struct skl_module_cfg *mconfig,
 struct skl_mic_sel_config *mic_cfg, struct device *dev)
{
 struct skl_specific_cfg *sp_cfg = &mconfig->formats_config;

 sp_cfg->caps_size = sizeof(struct skl_mic_sel_config);
 sp_cfg->set_params = SKL_PARAM_SET;
 sp_cfg->param_id = 0x00;
 if (!sp_cfg->caps) {
  sp_cfg->caps = devm_kzalloc(dev, sp_cfg->caps_size, GFP_KERNEL);
  if (!sp_cfg->caps)
   return -ENOMEM;
 }

 mic_cfg->mic_switch = SKL_MIC_SEL_SWITCH;
 mic_cfg->flags = 0;
 memcpy(sp_cfg->caps, mic_cfg, sp_cfg->caps_size);

 return 0;
}

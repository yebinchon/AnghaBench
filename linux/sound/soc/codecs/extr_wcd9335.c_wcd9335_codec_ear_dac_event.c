
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int clsh_ctrl; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int CLS_H_NORMAL ;


 int WCD_CLSH_EVENT_POST_PA ;
 int WCD_CLSH_EVENT_PRE_DAC ;
 int WCD_CLSH_STATE_EAR ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wcd_clsh_ctrl_set_state (int ,int ,int ,int ) ;

__attribute__((used)) static int wcd9335_codec_ear_dac_event(struct snd_soc_dapm_widget *w,
           struct snd_kcontrol *kc, int event)
{
 struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);
 struct wcd9335_codec *wcd = dev_get_drvdata(comp->dev);

 switch (event) {
 case 128:
  wcd_clsh_ctrl_set_state(wcd->clsh_ctrl, WCD_CLSH_EVENT_PRE_DAC,
     WCD_CLSH_STATE_EAR, CLS_H_NORMAL);

  break;
 case 129:
  wcd_clsh_ctrl_set_state(wcd->clsh_ctrl, WCD_CLSH_EVENT_POST_PA,
     WCD_CLSH_STATE_EAR, CLS_H_NORMAL);
  break;
 };

 return 0;
}

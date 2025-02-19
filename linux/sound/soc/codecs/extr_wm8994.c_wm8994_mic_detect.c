
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {struct wm8994_micdet* micdet; struct wm8994* wm8994; } ;
struct wm8994_micdet {int detecting; struct snd_soc_jack* jack; } ;
struct wm8994 {scalar_t__ type; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 scalar_t__ WM8994 ;
 int WM8994_IRQ_DEBOUNCE ;
 int WM8994_MIC1_DET_DB ;
 int WM8994_MIC1_DET_DB_MASK ;
 int WM8994_MIC1_SHRT_DB ;
 int WM8994_MIC1_SHRT_DB_MASK ;
 int WM8994_MIC2_DET_DB_MASK ;
 int WM8994_MIC2_SHRT_DB_MASK ;
 int WM8994_MICBIAS ;
 int WM8994_MICD_ENA ;
 int dev_dbg (int ,char*,int,struct snd_soc_jack*) ;
 int dev_warn (int ,char*,...) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

int wm8994_mic_detect(struct snd_soc_component *component, struct snd_soc_jack *jack,
        int micbias)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 struct wm8994_micdet *micdet;
 struct wm8994 *control = wm8994->wm8994;
 int reg, ret;

 if (control->type != WM8994) {
  dev_warn(component->dev, "Not a WM8994\n");
  return -EINVAL;
 }

 switch (micbias) {
 case 1:
  micdet = &wm8994->micdet[0];
  if (jack)
   ret = snd_soc_dapm_force_enable_pin(dapm, "MICBIAS1");
  else
   ret = snd_soc_dapm_disable_pin(dapm, "MICBIAS1");
  break;
 case 2:
  micdet = &wm8994->micdet[1];
  if (jack)
   ret = snd_soc_dapm_force_enable_pin(dapm, "MICBIAS1");
  else
   ret = snd_soc_dapm_disable_pin(dapm, "MICBIAS1");
  break;
 default:
  dev_warn(component->dev, "Invalid MICBIAS %d\n", micbias);
  return -EINVAL;
 }

 if (ret != 0)
  dev_warn(component->dev, "Failed to configure MICBIAS%d: %d\n",
    micbias, ret);

 dev_dbg(component->dev, "Configuring microphone detection on %d %p\n",
  micbias, jack);


 micdet->jack = jack;
 micdet->detecting = 1;


 if (wm8994->micdet[0].jack || wm8994->micdet[1].jack)
  reg = WM8994_MICD_ENA;
 else
  reg = 0;

 snd_soc_component_update_bits(component, WM8994_MICBIAS, WM8994_MICD_ENA, reg);


 snd_soc_component_update_bits(component, WM8994_IRQ_DEBOUNCE,
       WM8994_MIC1_DET_DB_MASK | WM8994_MIC1_SHRT_DB_MASK |
       WM8994_MIC2_DET_DB_MASK | WM8994_MIC2_SHRT_DB_MASK,
       WM8994_MIC1_DET_DB | WM8994_MIC1_SHRT_DB);

 snd_soc_dapm_sync(dapm);

 return 0;
}

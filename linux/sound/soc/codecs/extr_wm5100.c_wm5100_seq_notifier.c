
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm5100_priv {int* out_ena; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_dapm_type { ____Placeholder_snd_soc_dapm_type } snd_soc_dapm_type ;


 int WM5100_CHANNEL_ENABLES_1 ;
 int WM5100_OUTPUT_ENABLES_2 ;
 int WM5100_OUTPUT_STATUS_1 ;
 int WM5100_OUTPUT_STATUS_2 ;
 int dev_err (int ,char*,int) ;
 struct wm5100_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static void wm5100_seq_notifier(struct snd_soc_component *component,
    enum snd_soc_dapm_type event, int subseq)
{
 struct wm5100_priv *wm5100 = snd_soc_component_get_drvdata(component);
 u16 val, expect, i;


 if (wm5100->out_ena[0]) {
  expect = snd_soc_component_read32(component, WM5100_CHANNEL_ENABLES_1);
  for (i = 0; i < 200; i++) {
   val = snd_soc_component_read32(component, WM5100_OUTPUT_STATUS_1);
   if (val == expect) {
    wm5100->out_ena[0] = 0;
    break;
   }
  }
  if (i == 200) {
   dev_err(component->dev, "Timeout waiting for OUTPUT1 %x\n",
    expect);
  }
 }

 if (wm5100->out_ena[1]) {
  expect = snd_soc_component_read32(component, WM5100_OUTPUT_ENABLES_2);
  for (i = 0; i < 200; i++) {
   val = snd_soc_component_read32(component, WM5100_OUTPUT_STATUS_2);
   if (val == expect) {
    wm5100->out_ena[1] = 0;
    break;
   }
  }
  if (i == 200) {
   dev_err(component->dev, "Timeout waiting for OUTPUT2 %x\n",
    expect);
  }
 }
}

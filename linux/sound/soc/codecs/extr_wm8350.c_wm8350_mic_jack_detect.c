
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int report; int short_report; struct snd_soc_jack* jack; } ;
struct wm8350_data {TYPE_1__ mic; struct wm8350* wm8350; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int WM8350_MIC_DET_ENA ;
 int WM8350_POWER_MGMT_1 ;
 int WM8350_POWER_MGMT_4 ;
 int WM8350_TOCLK_ENA ;
 struct wm8350_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8350_clear_bits (struct wm8350*,int ,int ) ;
 int wm8350_set_bits (struct wm8350*,int ,int ) ;

int wm8350_mic_jack_detect(struct snd_soc_component *component,
      struct snd_soc_jack *jack,
      int detect_report, int short_report)
{
 struct wm8350_data *priv = snd_soc_component_get_drvdata(component);
 struct wm8350 *wm8350 = priv->wm8350;

 priv->mic.jack = jack;
 priv->mic.report = detect_report;
 priv->mic.short_report = short_report;

 if (detect_report || short_report) {
  wm8350_set_bits(wm8350, WM8350_POWER_MGMT_4, WM8350_TOCLK_ENA);
  wm8350_set_bits(wm8350, WM8350_POWER_MGMT_1,
    WM8350_MIC_DET_ENA);
 } else {
  wm8350_clear_bits(wm8350, WM8350_POWER_MGMT_1,
      WM8350_MIC_DET_ENA);
 }

 return 0;
}

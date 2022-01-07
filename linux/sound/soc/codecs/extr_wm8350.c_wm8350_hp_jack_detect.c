
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int report; struct snd_soc_jack* jack; } ;
struct TYPE_4__ {int report; struct snd_soc_jack* jack; } ;
struct wm8350_data {TYPE_1__ hpr; TYPE_2__ hpl; struct wm8350* wm8350; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
typedef enum wm8350_jack { ____Placeholder_wm8350_jack } wm8350_jack ;


 int EINVAL ;
 int WM8350_JACK_DETECT ;

 int WM8350_JDL_ENA ;

 int WM8350_JDR_ENA ;
 int WM8350_POWER_MGMT_4 ;
 int WM8350_TOCLK_ENA ;
 struct wm8350_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8350_clear_bits (struct wm8350*,int ,int) ;
 int wm8350_hpl_jack_handler (int ,struct wm8350_data*) ;
 int wm8350_hpr_jack_handler (int ,struct wm8350_data*) ;
 int wm8350_set_bits (struct wm8350*,int ,int) ;

int wm8350_hp_jack_detect(struct snd_soc_component *component, enum wm8350_jack which,
     struct snd_soc_jack *jack, int report)
{
 struct wm8350_data *priv = snd_soc_component_get_drvdata(component);
 struct wm8350 *wm8350 = priv->wm8350;
 int ena;

 switch (which) {
 case 129:
  priv->hpl.jack = jack;
  priv->hpl.report = report;
  ena = WM8350_JDL_ENA;
  break;

 case 128:
  priv->hpr.jack = jack;
  priv->hpr.report = report;
  ena = WM8350_JDR_ENA;
  break;

 default:
  return -EINVAL;
 }

 if (report) {
  wm8350_set_bits(wm8350, WM8350_POWER_MGMT_4, WM8350_TOCLK_ENA);
  wm8350_set_bits(wm8350, WM8350_JACK_DETECT, ena);
 } else {
  wm8350_clear_bits(wm8350, WM8350_JACK_DETECT, ena);
 }


 switch (which) {
 case 129:
  wm8350_hpl_jack_handler(0, priv);
  break;
 case 128:
  wm8350_hpr_jack_handler(0, priv);
  break;
 }

 return 0;
}

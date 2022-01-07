
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350_jack_data {int report; int jack; } ;
struct wm8350_data {struct wm8350* wm8350; } ;
struct wm8350 {int dummy; } ;


 int WM8350_JACK_PIN_STATUS ;
 int snd_soc_jack_report (int ,int,int) ;
 int wm8350_reg_read (struct wm8350*,int ) ;

__attribute__((used)) static void wm8350_hp_work(struct wm8350_data *priv,
      struct wm8350_jack_data *jack,
      u16 mask)
{
 struct wm8350 *wm8350 = priv->wm8350;
 u16 reg;
 int report;

 reg = wm8350_reg_read(wm8350, WM8350_JACK_PIN_STATUS);
 if (reg & mask)
  report = jack->report;
 else
  report = 0;

 snd_soc_jack_report(jack->jack, report, jack->report);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm5100_priv {int jack_detecting; int regmap; int jack; int dev; } ;


 int SND_JACK_HEADPHONE ;
 int WM5100_ACCDET_RATE_MASK ;
 int WM5100_ACCDET_RATE_SHIFT ;
 int WM5100_MIC_DETECT_1 ;
 int dev_dbg (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int snd_soc_jack_report (int ,int ,int ) ;

__attribute__((used)) static void wm5100_report_headphone(struct wm5100_priv *wm5100)
{
 dev_dbg(wm5100->dev, "Headphone detected\n");
 wm5100->jack_detecting = 0;
 snd_soc_jack_report(wm5100->jack, SND_JACK_HEADPHONE,
       SND_JACK_HEADPHONE);


 regmap_update_bits(wm5100->regmap, WM5100_MIC_DETECT_1,
      WM5100_ACCDET_RATE_MASK,
      7 << WM5100_ACCDET_RATE_SHIFT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm5100_priv {int jack_mic; int jack_detecting; int jack_flips; int jack; int dev; int jack_mode; int regmap; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_HEADSET ;
 int SND_JACK_LINEOUT ;
 int WM5100_ACCDET_RATE_MASK ;
 int WM5100_ACCDET_RATE_SHIFT ;
 unsigned int WM5100_ACCDET_STS ;
 unsigned int WM5100_ACCDET_VALID ;
 int WM5100_MIC_DETECT_1 ;
 int WM5100_MIC_DETECT_3 ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int snd_soc_jack_report (int ,int,int) ;
 int wm5100_report_headphone (struct wm5100_priv*) ;
 int wm5100_set_detect_mode (struct wm5100_priv*,int) ;

__attribute__((used)) static void wm5100_micd_irq(struct wm5100_priv *wm5100)
{
 unsigned int val;
 int ret;

 ret = regmap_read(wm5100->regmap, WM5100_MIC_DETECT_3, &val);
 if (ret != 0) {
  dev_err(wm5100->dev, "Failed to read microphone status: %d\n",
   ret);
  return;
 }

 dev_dbg(wm5100->dev, "Microphone event: %x\n", val);

 if (!(val & WM5100_ACCDET_VALID)) {
  dev_warn(wm5100->dev, "Microphone detection state invalid\n");
  return;
 }


 if (!(val & WM5100_ACCDET_STS)) {
  dev_dbg(wm5100->dev, "Jack removal detected\n");
  wm5100->jack_mic = 0;
  wm5100->jack_detecting = 1;
  wm5100->jack_flips = 0;
  snd_soc_jack_report(wm5100->jack, 0,
        SND_JACK_LINEOUT | SND_JACK_HEADSET |
        SND_JACK_BTN_0);

  regmap_update_bits(wm5100->regmap, WM5100_MIC_DETECT_1,
       WM5100_ACCDET_RATE_MASK,
       WM5100_ACCDET_RATE_MASK);
  return;
 }





 if (val & 0x400) {
  if (wm5100->jack_detecting) {
   dev_dbg(wm5100->dev, "Microphone detected\n");
   wm5100->jack_mic = 1;
   wm5100->jack_detecting = 0;
   snd_soc_jack_report(wm5100->jack,
         SND_JACK_HEADSET,
         SND_JACK_HEADSET | SND_JACK_BTN_0);



   regmap_update_bits(wm5100->regmap, WM5100_MIC_DETECT_1,
        WM5100_ACCDET_RATE_MASK,
        5 << WM5100_ACCDET_RATE_SHIFT);
  } else {
   dev_dbg(wm5100->dev, "Mic button up\n");
   snd_soc_jack_report(wm5100->jack, 0, SND_JACK_BTN_0);
  }

  return;
 }







 if (wm5100->jack_detecting && (val & 0x3f8)) {
  wm5100->jack_flips++;

  if (wm5100->jack_flips > 1)
   wm5100_report_headphone(wm5100);
  else
   wm5100_set_detect_mode(wm5100, !wm5100->jack_mode);

  return;
 }




 if (val & 0x3fc) {
  if (wm5100->jack_mic) {
   dev_dbg(wm5100->dev, "Mic button detected\n");
   snd_soc_jack_report(wm5100->jack, SND_JACK_BTN_0,
         SND_JACK_BTN_0);
  } else if (wm5100->jack_detecting) {
   wm5100_report_headphone(wm5100);
  }
 }
}

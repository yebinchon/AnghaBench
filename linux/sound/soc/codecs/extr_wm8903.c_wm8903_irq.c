
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8903_priv {int mic_last_report; int mic_short; int mic_det; int mic_jack; int regmap; int mic_delay; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WM8903_INTERRUPT_POLARITY_1 ;
 int WM8903_INTERRUPT_STATUS_1 ;
 int WM8903_INTERRUPT_STATUS_1_MASK ;
 unsigned int WM8903_MICDET_EINT ;
 unsigned int WM8903_MICDET_INV ;
 unsigned int WM8903_MICSHRT_EINT ;
 unsigned int WM8903_MICSHRT_INV ;
 unsigned int WM8903_WSEQ_BUSY_EINT ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,int) ;
 int dev_name (int ) ;
 int dev_warn (int ,char*) ;
 int msleep (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int snd_soc_jack_report (int ,int,int) ;
 int trace_snd_soc_jack_irq (int ) ;

__attribute__((used)) static irqreturn_t wm8903_irq(int irq, void *data)
{
 struct wm8903_priv *wm8903 = data;
 int mic_report, ret;
 unsigned int int_val, mask, int_pol;

 ret = regmap_read(wm8903->regmap, WM8903_INTERRUPT_STATUS_1_MASK,
     &mask);
 if (ret != 0) {
  dev_err(wm8903->dev, "Failed to read IRQ mask: %d\n", ret);
  return IRQ_NONE;
 }

 ret = regmap_read(wm8903->regmap, WM8903_INTERRUPT_STATUS_1, &int_val);
 if (ret != 0) {
  dev_err(wm8903->dev, "Failed to read IRQ status: %d\n", ret);
  return IRQ_NONE;
 }

 int_val &= ~mask;

 if (int_val & WM8903_WSEQ_BUSY_EINT) {
  dev_warn(wm8903->dev, "Write sequencer done\n");
 }
 mic_report = wm8903->mic_last_report;
 ret = regmap_read(wm8903->regmap, WM8903_INTERRUPT_POLARITY_1,
     &int_pol);
 if (ret != 0) {
  dev_err(wm8903->dev, "Failed to read interrupt polarity: %d\n",
   ret);
  return IRQ_HANDLED;
 }


 if (int_val & (WM8903_MICSHRT_EINT | WM8903_MICDET_EINT))
  trace_snd_soc_jack_irq(dev_name(wm8903->dev));


 if (int_val & WM8903_MICSHRT_EINT) {
  dev_dbg(wm8903->dev, "Microphone short (pol=%x)\n", int_pol);

  mic_report ^= wm8903->mic_short;
  int_pol ^= WM8903_MICSHRT_INV;
 }

 if (int_val & WM8903_MICDET_EINT) {
  dev_dbg(wm8903->dev, "Microphone detect (pol=%x)\n", int_pol);

  mic_report ^= wm8903->mic_det;
  int_pol ^= WM8903_MICDET_INV;

  msleep(wm8903->mic_delay);
 }

 regmap_update_bits(wm8903->regmap, WM8903_INTERRUPT_POLARITY_1,
      WM8903_MICSHRT_INV | WM8903_MICDET_INV, int_pol);

 snd_soc_jack_report(wm8903->mic_jack, mic_report,
       wm8903->mic_short | wm8903->mic_det);

 wm8903->mic_last_report = mic_report;

 return IRQ_HANDLED;
}

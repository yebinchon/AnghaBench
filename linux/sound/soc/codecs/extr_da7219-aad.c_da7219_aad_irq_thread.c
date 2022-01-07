
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct da7219_priv {int micbias_on_event; int regmap; } ;
struct da7219_aad_priv {int jack_inserted; int jack; int hptest_work; int btn_det_work; struct snd_soc_component* component; } ;
typedef int irqreturn_t ;


 size_t DA7219_AAD_IRQ_REG_A ;
 size_t DA7219_AAD_IRQ_REG_B ;
 int DA7219_AAD_IRQ_REG_MAX ;
 int DA7219_AAD_MAX_BUTTONS ;
 int DA7219_AAD_REPORT_ALL_MASK ;
 int DA7219_ACCDET_CONFIG_1 ;
 int DA7219_ACCDET_IRQ_EVENT_A ;
 int DA7219_ACCDET_STATUS_A ;
 int DA7219_BUTTON_CONFIG_MASK ;
 int DA7219_E_BUTTON_A_PRESSED_MASK ;
 int DA7219_E_BUTTON_A_RELEASED_MASK ;
 int DA7219_E_JACK_DETECT_COMPLETE_MASK ;
 int DA7219_E_JACK_INSERTED_MASK ;
 int DA7219_E_JACK_REMOVED_MASK ;
 int DA7219_HP_L_AMP_OE_MASK ;
 int DA7219_HP_L_CTRL ;
 int DA7219_HP_R_AMP_OE_MASK ;
 int DA7219_HP_R_CTRL ;
 int DA7219_JACK_INSERTION_STS_MASK ;
 int DA7219_JACK_TYPE_STS_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_HEADSET ;
 int SND_JACK_LINEOUT ;
 int SND_JACK_MECHANICAL ;
 int cancel_work_sync (int *) ;
 int dev_dbg (int ,char*,int,int,int) ;
 int regmap_bulk_read (int ,int ,int*,int) ;
 int regmap_bulk_write (int ,int ,int*,int) ;
 int schedule_work (int *) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;
 int snd_soc_jack_report (int ,int,int) ;

__attribute__((used)) static irqreturn_t da7219_aad_irq_thread(int irq, void *data)
{
 struct da7219_aad_priv *da7219_aad = data;
 struct snd_soc_component *component = da7219_aad->component;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 u8 events[DA7219_AAD_IRQ_REG_MAX];
 u8 statusa;
 int i, report = 0, mask = 0;


 regmap_bulk_read(da7219->regmap, DA7219_ACCDET_IRQ_EVENT_A,
    events, DA7219_AAD_IRQ_REG_MAX);

 if (!events[DA7219_AAD_IRQ_REG_A] && !events[DA7219_AAD_IRQ_REG_B])
  return IRQ_NONE;


 statusa = snd_soc_component_read32(component, DA7219_ACCDET_STATUS_A);


 regmap_bulk_write(da7219->regmap, DA7219_ACCDET_IRQ_EVENT_A,
     events, DA7219_AAD_IRQ_REG_MAX);

 dev_dbg(component->dev, "IRQ events = 0x%x|0x%x, status = 0x%x\n",
  events[DA7219_AAD_IRQ_REG_A], events[DA7219_AAD_IRQ_REG_B],
  statusa);

 if (statusa & DA7219_JACK_INSERTION_STS_MASK) {

  if (events[DA7219_AAD_IRQ_REG_A] &
      DA7219_E_JACK_INSERTED_MASK) {
   report |= SND_JACK_MECHANICAL;
   mask |= SND_JACK_MECHANICAL;
   da7219_aad->jack_inserted = 1;
  }


  if (events[DA7219_AAD_IRQ_REG_A] &
      DA7219_E_JACK_DETECT_COMPLETE_MASK) {
   if (statusa & DA7219_JACK_TYPE_STS_MASK) {
    report |= SND_JACK_HEADSET;
    mask |= SND_JACK_HEADSET | SND_JACK_LINEOUT;
    schedule_work(&da7219_aad->btn_det_work);
   } else {
    schedule_work(&da7219_aad->hptest_work);
   }
  }


  if (statusa & DA7219_JACK_TYPE_STS_MASK) {
   for (i = 0; i < DA7219_AAD_MAX_BUTTONS; ++i) {

    if (events[DA7219_AAD_IRQ_REG_B] &
        (DA7219_E_BUTTON_A_PRESSED_MASK << i)) {
     report |= SND_JACK_BTN_0 >> i;
     mask |= SND_JACK_BTN_0 >> i;
    }
   }
   snd_soc_jack_report(da7219_aad->jack, report, mask);

   for (i = 0; i < DA7219_AAD_MAX_BUTTONS; ++i) {

    if (events[DA7219_AAD_IRQ_REG_B] &
        (DA7219_E_BUTTON_A_RELEASED_MASK >> i)) {
     report &= ~(SND_JACK_BTN_0 >> i);
     mask |= SND_JACK_BTN_0 >> i;
    }
   }
  }
 } else {

  if (events[DA7219_AAD_IRQ_REG_A] & DA7219_E_JACK_REMOVED_MASK) {
   report = 0;
   mask |= DA7219_AAD_REPORT_ALL_MASK;
   da7219_aad->jack_inserted = 0;


   snd_soc_component_update_bits(component, DA7219_HP_R_CTRL,
         DA7219_HP_R_AMP_OE_MASK, 0);
   snd_soc_component_update_bits(component, DA7219_HP_L_CTRL,
         DA7219_HP_L_AMP_OE_MASK, 0);


   snd_soc_component_update_bits(component, DA7219_ACCDET_CONFIG_1,
         DA7219_BUTTON_CONFIG_MASK, 0);

   da7219->micbias_on_event = 0;


   snd_soc_dapm_disable_pin(dapm, "Mic Bias");
   snd_soc_dapm_sync(dapm);


   cancel_work_sync(&da7219_aad->btn_det_work);
   cancel_work_sync(&da7219_aad->hptest_work);
  }
 }

 snd_soc_jack_report(da7219_aad->jack, report, mask);

 return IRQ_HANDLED;
}

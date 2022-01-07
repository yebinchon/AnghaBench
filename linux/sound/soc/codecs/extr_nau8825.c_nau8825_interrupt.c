
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct nau8825 {int button_pressed; int xtalk_protect; scalar_t__ xtalk_state; int xtalk_event; int xtalk_event_mask; int jack; int xtalk_work; scalar_t__ xtalk_enable; int dev; int high_imped; struct regmap* regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NAU8825_BUTTONS ;
 int NAU8825_HEADSET_COMPLETION_IRQ ;
 int NAU8825_IMPEDANCE_MEAS_IRQ ;
 int NAU8825_IRQ_INSERT_DIS ;
 int NAU8825_IRQ_INSERT_EN ;
 int NAU8825_JACK_EJECTION_DETECTED ;
 int NAU8825_JACK_EJECTION_IRQ_MASK ;
 int NAU8825_JACK_INSERTION_DETECTED ;
 int NAU8825_JACK_INSERTION_IRQ_MASK ;
 int NAU8825_KEY_RELEASE_IRQ ;
 int NAU8825_KEY_SHORT_PRESS_IRQ ;
 int NAU8825_REG_INTERRUPT_DIS_CTRL ;
 int NAU8825_REG_INTERRUPT_MASK ;
 int NAU8825_REG_INT_CLR_KEY_STATUS ;
 int NAU8825_REG_IRQ_STATUS ;
 scalar_t__ NAU8825_XTALK_DONE ;
 scalar_t__ NAU8825_XTALK_PREPARE ;
 int SND_JACK_HEADSET ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int nau8825_button_decode (int) ;
 int nau8825_eject_jack (struct nau8825*) ;
 scalar_t__ nau8825_is_jack_inserted (struct regmap*) ;
 int nau8825_jack_insert (struct nau8825*) ;
 int nau8825_sema_acquire (struct nau8825*,int ) ;
 int nau8825_sema_release (struct nau8825*) ;
 int nau8825_setup_auto_irq (struct nau8825*) ;
 scalar_t__ regmap_read (struct regmap*,int ,int*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int) ;
 int schedule_work (int *) ;
 int snd_soc_jack_report (int ,int,int) ;

__attribute__((used)) static irqreturn_t nau8825_interrupt(int irq, void *data)
{
 struct nau8825 *nau8825 = (struct nau8825 *)data;
 struct regmap *regmap = nau8825->regmap;
 int active_irq, clear_irq = 0, event = 0, event_mask = 0;

 if (regmap_read(regmap, NAU8825_REG_IRQ_STATUS, &active_irq)) {
  dev_err(nau8825->dev, "failed to read irq status\n");
  return IRQ_NONE;
 }

 if ((active_irq & NAU8825_JACK_EJECTION_IRQ_MASK) ==
  NAU8825_JACK_EJECTION_DETECTED) {

  nau8825_eject_jack(nau8825);
  event_mask |= SND_JACK_HEADSET;
  clear_irq = NAU8825_JACK_EJECTION_IRQ_MASK;
 } else if (active_irq & NAU8825_KEY_SHORT_PRESS_IRQ) {
  int key_status;

  regmap_read(regmap, NAU8825_REG_INT_CLR_KEY_STATUS,
   &key_status);




  nau8825->button_pressed = nau8825_button_decode(
   key_status >> 8);

  event |= nau8825->button_pressed;
  event_mask |= NAU8825_BUTTONS;
  clear_irq = NAU8825_KEY_SHORT_PRESS_IRQ;
 } else if (active_irq & NAU8825_KEY_RELEASE_IRQ) {
  event_mask = NAU8825_BUTTONS;
  clear_irq = NAU8825_KEY_RELEASE_IRQ;
 } else if (active_irq & NAU8825_HEADSET_COMPLETION_IRQ) {
  if (nau8825_is_jack_inserted(regmap)) {
   event |= nau8825_jack_insert(nau8825);
   if (nau8825->xtalk_enable && !nau8825->high_imped) {



    if (!nau8825->xtalk_protect) {






     int ret;
     nau8825->xtalk_protect = 1;
     ret = nau8825_sema_acquire(nau8825, 0);
     if (ret)
      nau8825->xtalk_protect = 0;
    }

    if (nau8825->xtalk_protect) {
     nau8825->xtalk_state =
      NAU8825_XTALK_PREPARE;
     schedule_work(&nau8825->xtalk_work);
    }
   } else {




    if (nau8825->xtalk_protect) {
     nau8825_sema_release(nau8825);
     nau8825->xtalk_protect = 0;
    }
   }
  } else {
   dev_warn(nau8825->dev, "Headset completion IRQ fired but no headset connected\n");
   nau8825_eject_jack(nau8825);
  }

  event_mask |= SND_JACK_HEADSET;
  clear_irq = NAU8825_HEADSET_COMPLETION_IRQ;




  if (nau8825->xtalk_state == NAU8825_XTALK_PREPARE) {
   nau8825->xtalk_event = event;
   nau8825->xtalk_event_mask = event_mask;
  }
 } else if (active_irq & NAU8825_IMPEDANCE_MEAS_IRQ) {

  if (nau8825->xtalk_enable && nau8825->xtalk_protect)
   schedule_work(&nau8825->xtalk_work);
  clear_irq = NAU8825_IMPEDANCE_MEAS_IRQ;
 } else if ((active_irq & NAU8825_JACK_INSERTION_IRQ_MASK) ==
  NAU8825_JACK_INSERTION_DETECTED) {





  if (nau8825_is_jack_inserted(regmap)) {

   regmap_update_bits(regmap,
    NAU8825_REG_INTERRUPT_DIS_CTRL,
    NAU8825_IRQ_INSERT_DIS,
    NAU8825_IRQ_INSERT_DIS);
   regmap_update_bits(regmap, NAU8825_REG_INTERRUPT_MASK,
    NAU8825_IRQ_INSERT_EN, NAU8825_IRQ_INSERT_EN);



   nau8825_setup_auto_irq(nau8825);
  }
 }

 if (!clear_irq)
  clear_irq = active_irq;

 regmap_write(regmap, NAU8825_REG_INT_CLR_KEY_STATUS, clear_irq);






 if (event_mask && nau8825->xtalk_state == NAU8825_XTALK_DONE)
  snd_soc_jack_report(nau8825->jack, event, event_mask);

 return IRQ_HANDLED;
}

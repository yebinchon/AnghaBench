
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs43130_private {unsigned int hpload_stat; int hpload_done; int jack; int work; int wq; scalar_t__ dc_meas; int hpload_evt; int pll_rdy; int xtal_rdy; int regmap; struct snd_soc_component* component; } ;
typedef int irqreturn_t ;


 int ARRAY_SIZE (unsigned int*) ;
 unsigned int CS43130_HPLOAD_AC_INT ;
 unsigned int CS43130_HPLOAD_DC_INT ;
 unsigned int CS43130_HPLOAD_NO_DC_INT ;
 unsigned int CS43130_HPLOAD_OFF_INT ;
 unsigned int CS43130_HPLOAD_ON_INT ;
 unsigned int CS43130_HPLOAD_OOR_INT ;
 unsigned int CS43130_HPLOAD_UNPLUG_INT ;
 unsigned int CS43130_HP_PLUG_INT ;
 unsigned int CS43130_HP_UNPLUG_INT ;
 scalar_t__ CS43130_INT_MASK_1 ;
 scalar_t__ CS43130_INT_STATUS_1 ;
 int CS43130_JACK_MASK ;
 int CS43130_NUM_INT ;
 unsigned int CS43130_PLL_RDY_INT ;
 unsigned int CS43130_XTAL_ERR_INT ;
 unsigned int CS43130_XTAL_RDY_INT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SND_JACK_MECHANICAL ;
 int complete (int *) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,...) ;
 int queue_work (int ,int *) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;
 int snd_soc_jack_report (int *,int ,int ) ;
 int work_busy (int *) ;

__attribute__((used)) static irqreturn_t cs43130_irq_thread(int irq, void *data)
{
 struct cs43130_private *cs43130 = (struct cs43130_private *)data;
 struct snd_soc_component *component = cs43130->component;
 unsigned int stickies[CS43130_NUM_INT];
 unsigned int irq_occurrence = 0;
 unsigned int masks[CS43130_NUM_INT];
 int i, j;

 for (i = 0; i < ARRAY_SIZE(stickies); i++) {
  regmap_read(cs43130->regmap, CS43130_INT_STATUS_1 + i,
       &stickies[i]);
  regmap_read(cs43130->regmap, CS43130_INT_MASK_1 + i,
       &masks[i]);
 }

 for (i = 0; i < ARRAY_SIZE(stickies); i++) {
  stickies[i] = stickies[i] & (~masks[i]);
  for (j = 0; j < 8; j++)
   irq_occurrence += (stickies[i] >> j) & 1;
 }
 dev_dbg(component->dev, "number of interrupts occurred (%u)\n",
  irq_occurrence);

 if (!irq_occurrence)
  return IRQ_NONE;

 if (stickies[0] & CS43130_XTAL_RDY_INT) {
  complete(&cs43130->xtal_rdy);
  return IRQ_HANDLED;
 }

 if (stickies[0] & CS43130_PLL_RDY_INT) {
  complete(&cs43130->pll_rdy);
  return IRQ_HANDLED;
 }

 if (stickies[3] & CS43130_HPLOAD_NO_DC_INT) {
  cs43130->hpload_stat = stickies[3];
  dev_err(component->dev,
   "DC load has not completed before AC load (%x)\n",
   cs43130->hpload_stat);
  complete(&cs43130->hpload_evt);
  return IRQ_HANDLED;
 }

 if (stickies[3] & CS43130_HPLOAD_UNPLUG_INT) {
  cs43130->hpload_stat = stickies[3];
  dev_err(component->dev, "HP unplugged during measurement (%x)\n",
   cs43130->hpload_stat);
  complete(&cs43130->hpload_evt);
  return IRQ_HANDLED;
 }

 if (stickies[3] & CS43130_HPLOAD_OOR_INT) {
  cs43130->hpload_stat = stickies[3];
  dev_err(component->dev, "HP load out of range (%x)\n",
   cs43130->hpload_stat);
  complete(&cs43130->hpload_evt);
  return IRQ_HANDLED;
 }

 if (stickies[3] & CS43130_HPLOAD_AC_INT) {
  cs43130->hpload_stat = stickies[3];
  dev_dbg(component->dev, "HP AC load measurement done (%x)\n",
   cs43130->hpload_stat);
  complete(&cs43130->hpload_evt);
  return IRQ_HANDLED;
 }

 if (stickies[3] & CS43130_HPLOAD_DC_INT) {
  cs43130->hpload_stat = stickies[3];
  dev_dbg(component->dev, "HP DC load measurement done (%x)\n",
   cs43130->hpload_stat);
  complete(&cs43130->hpload_evt);
  return IRQ_HANDLED;
 }

 if (stickies[3] & CS43130_HPLOAD_ON_INT) {
  cs43130->hpload_stat = stickies[3];
  dev_dbg(component->dev, "HP load state machine on done (%x)\n",
   cs43130->hpload_stat);
  complete(&cs43130->hpload_evt);
  return IRQ_HANDLED;
 }

 if (stickies[3] & CS43130_HPLOAD_OFF_INT) {
  cs43130->hpload_stat = stickies[3];
  dev_dbg(component->dev, "HP load state machine off done (%x)\n",
   cs43130->hpload_stat);
  complete(&cs43130->hpload_evt);
  return IRQ_HANDLED;
 }

 if (stickies[0] & CS43130_XTAL_ERR_INT) {
  dev_err(component->dev, "Crystal err: clock is not running\n");
  return IRQ_HANDLED;
 }

 if (stickies[0] & CS43130_HP_UNPLUG_INT) {
  dev_dbg(component->dev, "HP unplugged\n");
  cs43130->hpload_done = 0;
  snd_soc_jack_report(&cs43130->jack, 0, CS43130_JACK_MASK);
  return IRQ_HANDLED;
 }

 if (stickies[0] & CS43130_HP_PLUG_INT) {
  if (cs43130->dc_meas && !cs43130->hpload_done &&
      !work_busy(&cs43130->work)) {
   dev_dbg(component->dev, "HP load queue work\n");
   queue_work(cs43130->wq, &cs43130->work);
  }

  snd_soc_jack_report(&cs43130->jack, SND_JACK_MECHANICAL,
        CS43130_JACK_MASK);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}

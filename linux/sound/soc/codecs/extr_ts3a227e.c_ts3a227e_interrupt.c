
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts3a227e {int buttons_held; struct device* dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 unsigned int DETECTION_COMPLETE_EVENT ;
 unsigned int INS_REM_EVENT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int PRESS_MASK (unsigned int) ;
 unsigned int RELEASE_MASK (unsigned int) ;
 unsigned int TS3A227E_NUM_BUTTONS ;
 int TS3A227E_REG_ACCESSORY_STATUS ;
 int TS3A227E_REG_INTERRUPT ;
 int TS3A227E_REG_KP_INTERRUPT ;
 int dev_err (struct device*,char*,int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int ts3a227e_jack_report (struct ts3a227e*) ;
 int ts3a227e_new_jack_state (struct ts3a227e*,unsigned int) ;

__attribute__((used)) static irqreturn_t ts3a227e_interrupt(int irq, void *data)
{
 struct ts3a227e *ts3a227e = (struct ts3a227e *)data;
 struct regmap *regmap = ts3a227e->regmap;
 unsigned int int_reg, kp_int_reg, acc_reg, i;
 struct device *dev = ts3a227e->dev;
 int ret;


 ret = regmap_read(regmap, TS3A227E_REG_INTERRUPT, &int_reg);
 if (ret) {
  dev_err(dev, "failed to clear interrupt ret=%d\n", ret);
  return IRQ_NONE;
 }

 if (int_reg & (DETECTION_COMPLETE_EVENT | INS_REM_EVENT)) {
  regmap_read(regmap, TS3A227E_REG_ACCESSORY_STATUS, &acc_reg);
  ts3a227e_new_jack_state(ts3a227e, acc_reg);
 }


 ret = regmap_read(regmap, TS3A227E_REG_KP_INTERRUPT, &kp_int_reg);
 if (ret) {
  dev_err(dev, "failed to clear key interrupt ret=%d\n", ret);
  return IRQ_NONE;
 }

 for (i = 0; i < TS3A227E_NUM_BUTTONS; i++) {
  if (kp_int_reg & PRESS_MASK(i))
   ts3a227e->buttons_held |= (1 << i);
  if (kp_int_reg & RELEASE_MASK(i))
   ts3a227e->buttons_held &= ~(1 << i);
 }

 ts3a227e_jack_report(ts3a227e);

 return IRQ_HANDLED;
}

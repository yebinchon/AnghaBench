
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_voice_trigger_info {int core_num; } ;
struct madera_priv {int * adsp; struct madera* madera; } ;
struct madera {int dev; int notifier; } ;
struct cs47l90 {struct madera_priv core; } ;
typedef int irqreturn_t ;


 int CS47L90_NUM_ADSP ;
 int ENODEV ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MADERA_NOTIFY_VOICE_TRIGGER ;
 int WM_ADSP_COMPR_VOICE_TRIGGER ;
 int blocking_notifier_call_chain (int *,int ,struct madera_voice_trigger_info*) ;
 int dev_err (int ,char*) ;
 int wm_adsp_compr_handle_irq (int *) ;

__attribute__((used)) static irqreturn_t cs47l90_adsp2_irq(int irq, void *data)
{
 struct cs47l90 *cs47l90 = data;
 struct madera_priv *priv = &cs47l90->core;
 struct madera *madera = priv->madera;
 struct madera_voice_trigger_info trig_info;
 int serviced = 0;
 int i, ret;

 for (i = 0; i < CS47L90_NUM_ADSP; ++i) {
  ret = wm_adsp_compr_handle_irq(&priv->adsp[i]);
  if (ret != -ENODEV)
   serviced++;
  if (ret == WM_ADSP_COMPR_VOICE_TRIGGER) {
   trig_info.core_num = i + 1;
   blocking_notifier_call_chain(&madera->notifier,
      MADERA_NOTIFY_VOICE_TRIGGER,
      &trig_info);
  }
 }

 if (!serviced) {
  dev_err(madera->dev, "Spurious compressed data IRQ\n");
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}

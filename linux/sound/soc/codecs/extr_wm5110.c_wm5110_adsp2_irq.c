
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * adsp; struct arizona* arizona; } ;
struct wm5110_priv {TYPE_1__ core; } ;
struct arizona_voice_trigger_info {int core; } ;
struct arizona {int dev; } ;
typedef int irqreturn_t ;


 int ARIZONA_NOTIFY_VOICE_TRIGGER ;
 int ENODEV ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WM5110_NUM_ADSP ;
 int WM_ADSP_COMPR_VOICE_TRIGGER ;
 int arizona_call_notifiers (struct arizona*,int ,struct arizona_voice_trigger_info*) ;
 int dev_err (int ,char*) ;
 int wm_adsp_compr_handle_irq (int *) ;

__attribute__((used)) static irqreturn_t wm5110_adsp2_irq(int irq, void *data)
{
 struct wm5110_priv *priv = data;
 struct arizona *arizona = priv->core.arizona;
 struct arizona_voice_trigger_info info;
 int serviced = 0;
 int i, ret;

 for (i = 0; i < WM5110_NUM_ADSP; ++i) {
  ret = wm_adsp_compr_handle_irq(&priv->core.adsp[i]);
  if (ret != -ENODEV)
   serviced++;
  if (ret == WM_ADSP_COMPR_VOICE_TRIGGER) {
   info.core = i;
   arizona_call_notifiers(arizona,
            ARIZONA_NOTIFY_VOICE_TRIGGER,
            &info);
  }
 }

 if (!serviced) {
  dev_err(arizona->dev, "Spurious compressed data IRQ\n");
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}

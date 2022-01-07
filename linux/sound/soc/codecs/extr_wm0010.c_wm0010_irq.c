
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm0010_priv {int state; int irq_lock; int boot_completion; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;



 int complete (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t wm0010_irq(int irq, void *data)
{
 struct wm0010_priv *wm0010 = data;

 switch (wm0010->state) {
 case 129:
 case 130:
 case 128:
  spin_lock(&wm0010->irq_lock);
  complete(&wm0010->boot_completion);
  spin_unlock(&wm0010->irq_lock);
  return IRQ_HANDLED;
 default:
  return IRQ_NONE;
 }

 return IRQ_NONE;
}

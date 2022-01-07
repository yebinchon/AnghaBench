
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5640_priv {int jack_work; scalar_t__ jack; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_work (int ,int *) ;
 int system_long_wq ;

__attribute__((used)) static irqreturn_t rt5640_irq(int irq, void *data)
{
 struct rt5640_priv *rt5640 = data;

 if (rt5640->jack)
  queue_work(system_long_wq, &rt5640->jack_work);

 return IRQ_HANDLED;
}

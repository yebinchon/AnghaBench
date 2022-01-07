
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5651_priv {int jack_detect_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_work (int ,int *) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t rt5651_irq(int irq, void *data)
{
 struct rt5651_priv *rt5651 = data;

 queue_work(system_power_efficient_wq, &rt5651->jack_detect_work);

 return IRQ_HANDLED;
}

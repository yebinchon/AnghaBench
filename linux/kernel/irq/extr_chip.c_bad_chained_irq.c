
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_NONE ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static irqreturn_t bad_chained_irq(int irq, void *dev_id)
{
 WARN_ONCE(1, "Chained irq %d should not call an action\n", irq);
 return IRQ_NONE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_NONE ;
 int WARN (int,char*,int) ;

__attribute__((used)) static irqreturn_t irq_forced_secondary_handler(int irq, void *dev_id)
{
 WARN(1, "Secondary action handler called for irq %d\n", irq);
 return IRQ_NONE;
}

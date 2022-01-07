
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int irqreturn_t ;


 unsigned int IRQ_HANDLED ;
 unsigned int IRQ_WAKE_THREAD ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline int bad_action_ret(irqreturn_t action_ret)
{
 unsigned int r = action_ret;

 if (likely(r <= (IRQ_HANDLED | IRQ_WAKE_THREAD)))
  return 0;
 return 1;
}

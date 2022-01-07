
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOFTIRQ_DISABLE_OFFSET ;
 int WARN_ON_ONCE (int ) ;
 int __local_bh_enable (int ) ;
 int in_irq () ;

void _local_bh_enable(void)
{
 WARN_ON_ONCE(in_irq());
 __local_bh_enable(SOFTIRQ_DISABLE_OFFSET);
}

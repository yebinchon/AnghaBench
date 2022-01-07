
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kasan_disable_current () ;
 int pr_err (char*) ;
 int report_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;

__attribute__((used)) static void start_report(unsigned long *flags)
{



 kasan_disable_current();
 spin_lock_irqsave(&report_lock, *flags);
 pr_err("==================================================================\n");
}

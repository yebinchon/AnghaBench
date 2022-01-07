
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCKDEP_NOW_UNRELIABLE ;
 int TAINT_BAD_PAGE ;
 int add_taint (int ,int ) ;
 int kasan_enable_current () ;
 int panic (char*) ;
 scalar_t__ panic_on_warn ;
 int pr_err (char*) ;
 int report_lock ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void end_report(unsigned long *flags)
{
 pr_err("==================================================================\n");
 add_taint(TAINT_BAD_PAGE, LOCKDEP_NOW_UNRELIABLE);
 spin_unlock_irqrestore(&report_lock, *flags);
 if (panic_on_warn)
  panic("panic_on_warn set ...\n");
 kasan_enable_current();
}

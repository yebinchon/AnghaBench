
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_cputimers {int timers_active; } ;
struct signal_struct {struct posix_cputimers posix_cputimers; } ;


 int TICK_DEP_BIT_POSIX_TIMER ;
 int WRITE_ONCE (int ,int) ;
 int tick_dep_clear_signal (struct signal_struct*,int ) ;

__attribute__((used)) static inline void stop_process_timers(struct signal_struct *sig)
{
 struct posix_cputimers *pct = &sig->posix_cputimers;


 WRITE_ONCE(pct->timers_active, 0);
 tick_dep_clear_signal(sig, TICK_DEP_BIT_POSIX_TIMER);
}

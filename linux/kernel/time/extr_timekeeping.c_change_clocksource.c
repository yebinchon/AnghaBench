
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct clocksource* clock; } ;
struct timekeeper {TYPE_1__ tkr_mono; } ;
struct clocksource {scalar_t__ (* enable ) (struct clocksource*) ;int owner; int (* disable ) (struct clocksource*) ;} ;
struct TYPE_4__ {int seq; struct timekeeper timekeeper; } ;


 int TK_CLEAR_NTP ;
 int TK_CLOCK_WAS_SET ;
 int TK_MIRROR ;
 int module_put (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct clocksource*) ;
 int stub2 (struct clocksource*) ;
 int timekeeper_lock ;
 int timekeeping_forward_now (struct timekeeper*) ;
 int timekeeping_update (struct timekeeper*,int) ;
 TYPE_2__ tk_core ;
 int tk_setup_internals (struct timekeeper*,struct clocksource*) ;
 scalar_t__ try_module_get (int ) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

__attribute__((used)) static int change_clocksource(void *data)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 struct clocksource *new, *old;
 unsigned long flags;

 new = (struct clocksource *) data;

 raw_spin_lock_irqsave(&timekeeper_lock, flags);
 write_seqcount_begin(&tk_core.seq);

 timekeeping_forward_now(tk);




 if (try_module_get(new->owner)) {
  if (!new->enable || new->enable(new) == 0) {
   old = tk->tkr_mono.clock;
   tk_setup_internals(tk, new);
   if (old->disable)
    old->disable(old);
   module_put(old->owner);
  } else {
   module_put(new->owner);
  }
 }
 timekeeping_update(tk, TK_CLEAR_NTP | TK_MIRROR | TK_CLOCK_WAS_SET);

 write_seqcount_end(&tk_core.seq);
 raw_spin_unlock_irqrestore(&timekeeper_lock, flags);

 return 0;
}

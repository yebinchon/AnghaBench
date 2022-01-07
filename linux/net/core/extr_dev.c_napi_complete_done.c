
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct napi_struct {unsigned long state; int poll_list; int timer; TYPE_1__* dev; scalar_t__ gro_bitmask; } ;
struct TYPE_2__ {unsigned long gro_flush_timeout; } ;


 int HRTIMER_MODE_REL_PINNED ;
 unsigned long NAPIF_STATE_IN_BUSY_POLL ;
 unsigned long NAPIF_STATE_MISSED ;
 unsigned long NAPIF_STATE_NPSVC ;
 unsigned long NAPIF_STATE_SCHED ;
 unsigned long READ_ONCE (unsigned long) ;
 int WARN_ON_ONCE (int) ;
 int __napi_schedule (struct napi_struct*) ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 int gro_normal_list (struct napi_struct*) ;
 int hrtimer_start (int *,int ,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int napi_gro_flush (struct napi_struct*,int) ;
 int ns_to_ktime (unsigned long) ;
 scalar_t__ unlikely (unsigned long) ;

bool napi_complete_done(struct napi_struct *n, int work_done)
{
 unsigned long flags, val, new;







 if (unlikely(n->state & (NAPIF_STATE_NPSVC |
     NAPIF_STATE_IN_BUSY_POLL)))
  return 0;

 gro_normal_list(n);

 if (n->gro_bitmask) {
  unsigned long timeout = 0;

  if (work_done)
   timeout = n->dev->gro_flush_timeout;





  napi_gro_flush(n, !!timeout);
  if (timeout)
   hrtimer_start(&n->timer, ns_to_ktime(timeout),
          HRTIMER_MODE_REL_PINNED);
 }
 if (unlikely(!list_empty(&n->poll_list))) {

  local_irq_save(flags);
  list_del_init(&n->poll_list);
  local_irq_restore(flags);
 }

 do {
  val = READ_ONCE(n->state);

  WARN_ON_ONCE(!(val & NAPIF_STATE_SCHED));

  new = val & ~(NAPIF_STATE_MISSED | NAPIF_STATE_SCHED);





  new |= (val & NAPIF_STATE_MISSED) / NAPIF_STATE_MISSED *
          NAPIF_STATE_SCHED;
 } while (cmpxchg(&n->state, val, new) != val);

 if (unlikely(val & NAPIF_STATE_MISSED)) {
  __napi_schedule(n);
  return 0;
 }

 return 1;
}

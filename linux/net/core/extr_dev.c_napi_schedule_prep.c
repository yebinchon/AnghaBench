
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int state; } ;


 unsigned long NAPIF_STATE_DISABLE ;
 unsigned long NAPIF_STATE_MISSED ;
 unsigned long NAPIF_STATE_SCHED ;
 unsigned long READ_ONCE (int ) ;
 unsigned long cmpxchg (int *,unsigned long,unsigned long) ;
 scalar_t__ unlikely (unsigned long) ;

bool napi_schedule_prep(struct napi_struct *n)
{
 unsigned long val, new;

 do {
  val = READ_ONCE(n->state);
  if (unlikely(val & NAPIF_STATE_DISABLE))
   return 0;
  new = val | NAPIF_STATE_SCHED;







  new |= (val & NAPIF_STATE_SCHED) / NAPIF_STATE_SCHED *
         NAPIF_STATE_MISSED;
 } while (cmpxchg(&n->state, val, new) != val);

 return !(val & NAPIF_STATE_SCHED);
}

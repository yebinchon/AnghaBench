
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {int rseq_event_mask; TYPE_1__* rseq; } ;
struct TYPE_2__ {int flags; } ;


 int EINVAL ;
 int RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL ;
 int RSEQ_CS_PREEMPT_MIGRATE_FLAGS ;
 int get_user (int,int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rseq_need_restart(struct task_struct *t, u32 cs_flags)
{
 u32 flags, event_mask;
 int ret;


 ret = get_user(flags, &t->rseq->flags);
 if (ret)
  return ret;


 flags |= cs_flags;







 if (unlikely((flags & RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL) &&
       (flags & RSEQ_CS_PREEMPT_MIGRATE_FLAGS) !=
       RSEQ_CS_PREEMPT_MIGRATE_FLAGS))
  return -EINVAL;





 preempt_disable();
 event_mask = t->rseq_event_mask;
 t->rseq_event_mask = 0;
 preempt_enable();

 return !!(event_mask & ~flags);
}

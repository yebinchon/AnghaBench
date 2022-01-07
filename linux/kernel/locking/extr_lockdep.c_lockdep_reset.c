
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct held_lock {int dummy; } ;
struct TYPE_3__ {int held_locks; } ;


 int CHAINHASH_SIZE ;
 int INIT_HLIST_HEAD (scalar_t__) ;
 int MAX_LOCK_DEPTH ;
 scalar_t__ chainhash_table ;
 TYPE_1__* current ;
 int debug_locks ;
 int lockdep_init_task (TYPE_1__*) ;
 int memset (int ,int ,int) ;
 scalar_t__ nr_hardirq_chains ;
 scalar_t__ nr_process_chains ;
 scalar_t__ nr_softirq_chains ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

void lockdep_reset(void)
{
 unsigned long flags;
 int i;

 raw_local_irq_save(flags);
 lockdep_init_task(current);
 memset(current->held_locks, 0, MAX_LOCK_DEPTH*sizeof(struct held_lock));
 nr_hardirq_chains = 0;
 nr_softirq_chains = 0;
 nr_process_chains = 0;
 debug_locks = 1;
 for (i = 0; i < CHAINHASH_SIZE; i++)
  INIT_HLIST_HEAD(chainhash_table + i);
 raw_local_irq_restore(flags);
}

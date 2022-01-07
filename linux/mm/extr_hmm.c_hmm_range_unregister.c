
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hmm_range {int valid; struct hmm* hmm; int list; } ;
struct TYPE_2__ {int mm; } ;
struct hmm {TYPE_1__ mmu_notifier; int ranges_lock; } ;


 int POISON_INUSE ;
 int list_del_init (int *) ;
 int memset (struct hmm**,int ,int) ;
 int mmput (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void hmm_range_unregister(struct hmm_range *range)
{
 struct hmm *hmm = range->hmm;
 unsigned long flags;

 spin_lock_irqsave(&hmm->ranges_lock, flags);
 list_del_init(&range->list);
 spin_unlock_irqrestore(&hmm->ranges_lock, flags);


 mmput(hmm->mmu_notifier.mm);






 range->valid = 0;
 memset(&range->hmm, POISON_INUSE, sizeof(range->hmm));
}

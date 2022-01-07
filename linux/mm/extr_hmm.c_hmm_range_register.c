
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hmm_range {int valid; int start; int end; int list; struct hmm* hmm; } ;
struct hmm_mirror {struct hmm* hmm; } ;
struct TYPE_2__ {int mm; } ;
struct hmm {int ranges_lock; int notifiers; int ranges; TYPE_1__ mmu_notifier; } ;


 int EFAULT ;
 int EINVAL ;
 int PAGE_SIZE ;
 int list_add (int *,int *) ;
 int mmget_not_zero (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int hmm_range_register(struct hmm_range *range, struct hmm_mirror *mirror)
{
 struct hmm *hmm = mirror->hmm;
 unsigned long flags;

 range->valid = 0;
 range->hmm = ((void*)0);

 if ((range->start & (PAGE_SIZE - 1)) || (range->end & (PAGE_SIZE - 1)))
  return -EINVAL;
 if (range->start >= range->end)
  return -EINVAL;


 if (!mmget_not_zero(hmm->mmu_notifier.mm))
  return -EFAULT;


 spin_lock_irqsave(&hmm->ranges_lock, flags);

 range->hmm = hmm;
 list_add(&range->list, &hmm->ranges);





 if (!hmm->notifiers)
  range->valid = 1;
 spin_unlock_irqrestore(&hmm->ranges_lock, flags);

 return 0;
}

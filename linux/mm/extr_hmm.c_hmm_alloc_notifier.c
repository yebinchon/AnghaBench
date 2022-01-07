
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;
struct hmm {struct mmu_notifier mmu_notifier; scalar_t__ notifiers; int ranges_lock; int ranges; int mirrors_sem; int mirrors; int wq; } ;


 int ENOMEM ;
 struct mmu_notifier* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 struct hmm* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct mmu_notifier *hmm_alloc_notifier(struct mm_struct *mm)
{
 struct hmm *hmm;

 hmm = kzalloc(sizeof(*hmm), GFP_KERNEL);
 if (!hmm)
  return ERR_PTR(-ENOMEM);

 init_waitqueue_head(&hmm->wq);
 INIT_LIST_HEAD(&hmm->mirrors);
 init_rwsem(&hmm->mirrors_sem);
 INIT_LIST_HEAD(&hmm->ranges);
 spin_lock_init(&hmm->ranges_lock);
 hmm->notifiers = 0;
 return &hmm->mmu_notifier;
}

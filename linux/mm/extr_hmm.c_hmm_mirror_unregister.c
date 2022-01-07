
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmm_mirror {int list; struct hmm* hmm; } ;
struct hmm {int mmu_notifier; int mirrors_sem; } ;


 int down_write (int *) ;
 int list_del (int *) ;
 int mmu_notifier_put (int *) ;
 int up_write (int *) ;

void hmm_mirror_unregister(struct hmm_mirror *mirror)
{
 struct hmm *hmm = mirror->hmm;

 down_write(&hmm->mirrors_sem);
 list_del(&mirror->list);
 up_write(&hmm->mirrors_sem);
 mmu_notifier_put(&hmm->mmu_notifier);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct cpuset_migrate_mm_work {int work; int to; int from; struct mm_struct* mm; } ;
typedef int nodemask_t ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int cpuset_migrate_mm_workfn ;
 int cpuset_migrate_mm_wq ;
 struct cpuset_migrate_mm_work* kzalloc (int,int ) ;
 int mmput (struct mm_struct*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void cpuset_migrate_mm(struct mm_struct *mm, const nodemask_t *from,
       const nodemask_t *to)
{
 struct cpuset_migrate_mm_work *mwork;

 mwork = kzalloc(sizeof(*mwork), GFP_KERNEL);
 if (mwork) {
  mwork->mm = mm;
  mwork->from = *from;
  mwork->to = *to;
  INIT_WORK(&mwork->work, cpuset_migrate_mm_workfn);
  queue_work(cpuset_migrate_mm_wq, &mwork->work);
 } else {
  mmput(mm);
 }
}

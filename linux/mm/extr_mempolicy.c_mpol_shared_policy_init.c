
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_end; } ;
struct shared_policy {int lock; int root; } ;
struct TYPE_2__ {int user_nodemask; } ;
struct mempolicy {TYPE_1__ w; int flags; int mode; } ;


 scalar_t__ IS_ERR (struct mempolicy*) ;
 int NODEMASK_SCRATCH (int ) ;
 int NODEMASK_SCRATCH_FREE (int ) ;
 int RB_ROOT ;
 int TASK_SIZE ;
 int current ;
 struct mempolicy* mpol_new (int ,int ,int *) ;
 int mpol_put (struct mempolicy*) ;
 int mpol_set_nodemask (struct mempolicy*,int *,int ) ;
 int mpol_set_shared_policy (struct shared_policy*,struct vm_area_struct*,struct mempolicy*) ;
 int rwlock_init (int *) ;
 int scratch ;
 int task_lock (int ) ;
 int task_unlock (int ) ;
 int vma_init (struct vm_area_struct*,int *) ;

void mpol_shared_policy_init(struct shared_policy *sp, struct mempolicy *mpol)
{
 int ret;

 sp->root = RB_ROOT;
 rwlock_init(&sp->lock);

 if (mpol) {
  struct vm_area_struct pvma;
  struct mempolicy *new;
  NODEMASK_SCRATCH(scratch);

  if (!scratch)
   goto put_mpol;

  new = mpol_new(mpol->mode, mpol->flags, &mpol->w.user_nodemask);
  if (IS_ERR(new))
   goto free_scratch;

  task_lock(current);
  ret = mpol_set_nodemask(new, &mpol->w.user_nodemask, scratch);
  task_unlock(current);
  if (ret)
   goto put_new;


  vma_init(&pvma, ((void*)0));
  pvma.vm_end = TASK_SIZE;
  mpol_set_shared_policy(sp, &pvma, new);

put_new:
  mpol_put(new);
free_scratch:
  NODEMASK_SCRATCH_FREE(scratch);
put_mpol:
  mpol_put(mpol);
 }
}

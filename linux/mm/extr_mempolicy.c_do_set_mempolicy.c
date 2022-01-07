
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mempolicy {scalar_t__ mode; } ;
typedef int nodemask_t ;
struct TYPE_4__ {scalar_t__ il_prev; struct mempolicy* mempolicy; } ;


 long ENOMEM ;
 scalar_t__ IS_ERR (struct mempolicy*) ;
 scalar_t__ MAX_NUMNODES ;
 scalar_t__ MPOL_INTERLEAVE ;
 int NODEMASK_SCRATCH (int ) ;
 int NODEMASK_SCRATCH_FREE (int ) ;
 int PTR_ERR (struct mempolicy*) ;
 TYPE_1__* current ;
 struct mempolicy* mpol_new (unsigned short,unsigned short,int *) ;
 int mpol_put (struct mempolicy*) ;
 int mpol_set_nodemask (struct mempolicy*,int *,int ) ;
 int scratch ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

__attribute__((used)) static long do_set_mempolicy(unsigned short mode, unsigned short flags,
        nodemask_t *nodes)
{
 struct mempolicy *new, *old;
 NODEMASK_SCRATCH(scratch);
 int ret;

 if (!scratch)
  return -ENOMEM;

 new = mpol_new(mode, flags, nodes);
 if (IS_ERR(new)) {
  ret = PTR_ERR(new);
  goto out;
 }

 task_lock(current);
 ret = mpol_set_nodemask(new, nodes, scratch);
 if (ret) {
  task_unlock(current);
  mpol_put(new);
  goto out;
 }
 old = current->mempolicy;
 current->mempolicy = new;
 if (new && new->mode == MPOL_INTERLEAVE)
  current->il_prev = MAX_NUMNODES-1;
 task_unlock(current);
 mpol_put(old);
 ret = 0;
out:
 NODEMASK_SCRATCH_FREE(scratch);
 return ret;
}

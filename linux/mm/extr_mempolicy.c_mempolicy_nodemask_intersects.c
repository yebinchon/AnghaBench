
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct mempolicy* mempolicy; } ;
struct TYPE_2__ {int nodes; } ;
struct mempolicy {int mode; TYPE_1__ v; } ;
typedef int nodemask_t ;


 int BUG () ;



 int nodes_intersects (int ,int const) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

bool mempolicy_nodemask_intersects(struct task_struct *tsk,
     const nodemask_t *mask)
{
 struct mempolicy *mempolicy;
 bool ret = 1;

 if (!mask)
  return ret;
 task_lock(tsk);
 mempolicy = tsk->mempolicy;
 if (!mempolicy)
  goto out;

 switch (mempolicy->mode) {
 case 128:






  break;
 case 130:
 case 129:
  ret = nodes_intersects(mempolicy->v.nodes, *mask);
  break;
 default:
  BUG();
 }
out:
 task_unlock(tsk);
 return ret;
}

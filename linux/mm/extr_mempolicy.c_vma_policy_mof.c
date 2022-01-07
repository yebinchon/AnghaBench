
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct mempolicy* vm_policy; int vm_start; TYPE_1__* vm_ops; } ;
struct mempolicy {int flags; } ;
struct TYPE_2__ {struct mempolicy* (* get_policy ) (struct vm_area_struct*,int ) ;} ;


 int MPOL_F_MOF ;
 int current ;
 struct mempolicy* get_task_policy (int ) ;
 int mpol_cond_put (struct mempolicy*) ;
 struct mempolicy* stub1 (struct vm_area_struct*,int ) ;

bool vma_policy_mof(struct vm_area_struct *vma)
{
 struct mempolicy *pol;

 if (vma->vm_ops && vma->vm_ops->get_policy) {
  bool ret = 0;

  pol = vma->vm_ops->get_policy(vma, vma->vm_start);
  if (pol && (pol->flags & MPOL_F_MOF))
   ret = 1;
  mpol_cond_put(pol);

  return ret;
 }

 pol = vma->vm_policy;
 if (!pol)
  pol = get_task_policy(current);

 return pol->flags & MPOL_F_MOF;
}

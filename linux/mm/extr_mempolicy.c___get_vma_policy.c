
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct mempolicy* vm_policy; TYPE_1__* vm_ops; } ;
struct mempolicy {int dummy; } ;
struct TYPE_2__ {struct mempolicy* (* get_policy ) (struct vm_area_struct*,unsigned long) ;} ;


 int mpol_get (struct mempolicy*) ;
 scalar_t__ mpol_needs_cond_ref (struct mempolicy*) ;
 struct mempolicy* stub1 (struct vm_area_struct*,unsigned long) ;

struct mempolicy *__get_vma_policy(struct vm_area_struct *vma,
      unsigned long addr)
{
 struct mempolicy *pol = ((void*)0);

 if (vma) {
  if (vma->vm_ops && vma->vm_ops->get_policy) {
   pol = vma->vm_ops->get_policy(vma, addr);
  } else if (vma->vm_policy) {
   pol = vma->vm_policy;







   if (mpol_needs_cond_ref(pol))
    mpol_get(pol);
  }
 }

 return pol;
}

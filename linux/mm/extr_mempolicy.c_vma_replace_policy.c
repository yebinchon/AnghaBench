
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct mempolicy* vm_policy; TYPE_1__* vm_ops; int vm_file; int vm_pgoff; int vm_end; int vm_start; } ;
struct mempolicy {int dummy; } ;
struct TYPE_2__ {int (* set_policy ) (struct vm_area_struct*,struct mempolicy*) ;} ;


 scalar_t__ IS_ERR (struct mempolicy*) ;
 int PTR_ERR (struct mempolicy*) ;
 struct mempolicy* mpol_dup (struct mempolicy*) ;
 int mpol_put (struct mempolicy*) ;
 int pr_debug (char*,int ,int ,int ,TYPE_1__*,int ,int (*) (struct vm_area_struct*,struct mempolicy*)) ;
 int stub1 (struct vm_area_struct*,struct mempolicy*) ;

__attribute__((used)) static int vma_replace_policy(struct vm_area_struct *vma,
      struct mempolicy *pol)
{
 int err;
 struct mempolicy *old;
 struct mempolicy *new;

 pr_debug("vma %lx-%lx/%lx vm_ops %p vm_file %p set_policy %p\n",
   vma->vm_start, vma->vm_end, vma->vm_pgoff,
   vma->vm_ops, vma->vm_file,
   vma->vm_ops ? vma->vm_ops->set_policy : ((void*)0));

 new = mpol_dup(pol);
 if (IS_ERR(new))
  return PTR_ERR(new);

 if (vma->vm_ops && vma->vm_ops->set_policy) {
  err = vma->vm_ops->set_policy(vma, new);
  if (err)
   goto err_out;
 }

 old = vma->vm_policy;
 vma->vm_policy = new;
 mpol_put(old);

 return 0;
 err_out:
 mpol_put(new);
 return err;
}

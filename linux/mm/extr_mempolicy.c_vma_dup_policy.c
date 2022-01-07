
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mempolicy* vm_policy; } ;
struct mempolicy {int dummy; } ;


 scalar_t__ IS_ERR (struct mempolicy*) ;
 int PTR_ERR (struct mempolicy*) ;
 struct mempolicy* mpol_dup (int ) ;
 int vma_policy (struct vm_area_struct*) ;

int vma_dup_policy(struct vm_area_struct *src, struct vm_area_struct *dst)
{
 struct mempolicy *pol = mpol_dup(vma_policy(src));

 if (IS_ERR(pol))
  return PTR_ERR(pol);
 dst->vm_policy = pol;
 return 0;
}

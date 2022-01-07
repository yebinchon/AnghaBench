
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mempolicy {int dummy; } ;


 struct mempolicy* __get_vma_policy (struct vm_area_struct*,unsigned long) ;
 int current ;
 struct mempolicy* get_task_policy (int ) ;

__attribute__((used)) static struct mempolicy *get_vma_policy(struct vm_area_struct *vma,
      unsigned long addr)
{
 struct mempolicy *pol = __get_vma_policy(vma, addr);

 if (!pol)
  pol = get_task_policy(current);

 return pol;
}

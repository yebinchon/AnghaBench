
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_file; TYPE_1__* vm_ops; struct vm_area_struct* vm_next; } ;
struct TYPE_2__ {int (* close ) (struct vm_area_struct*) ;} ;


 int fput (scalar_t__) ;
 int might_sleep () ;
 int mpol_put (int ) ;
 int stub1 (struct vm_area_struct*) ;
 int vm_area_free (struct vm_area_struct*) ;
 int vma_policy (struct vm_area_struct*) ;

__attribute__((used)) static struct vm_area_struct *remove_vma(struct vm_area_struct *vma)
{
 struct vm_area_struct *next = vma->vm_next;

 might_sleep();
 if (vma->vm_ops && vma->vm_ops->close)
  vma->vm_ops->close(vma);
 if (vma->vm_file)
  fput(vma->vm_file);
 mpol_put(vma_policy(vma));
 vm_area_free(vma);
 return next;
}

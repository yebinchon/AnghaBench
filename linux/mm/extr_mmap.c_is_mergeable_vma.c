
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_userfaultfd_ctx {int dummy; } ;
struct vm_area_struct {unsigned long vm_flags; TYPE_1__* vm_ops; struct file* vm_file; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ close; } ;


 unsigned long VM_SOFTDIRTY ;
 int is_mergeable_vm_userfaultfd_ctx (struct vm_area_struct*,struct vm_userfaultfd_ctx) ;

__attribute__((used)) static inline int is_mergeable_vma(struct vm_area_struct *vma,
    struct file *file, unsigned long vm_flags,
    struct vm_userfaultfd_ctx vm_userfaultfd_ctx)
{
 if ((vma->vm_flags ^ vm_flags) & ~VM_SOFTDIRTY)
  return 0;
 if (vma->vm_file != file)
  return 0;
 if (vma->vm_ops && vma->vm_ops->close)
  return 0;
 if (!is_mergeable_vm_userfaultfd_ctx(vma, vm_userfaultfd_ctx))
  return 0;
 return 1;
}

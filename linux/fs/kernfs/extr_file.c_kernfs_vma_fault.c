
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; } ;
struct kernfs_open_file {int kn; TYPE_2__* vm_ops; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int (* fault ) (struct vm_fault*) ;} ;
struct TYPE_3__ {struct file* vm_file; } ;


 int VM_FAULT_SIGBUS ;
 int kernfs_get_active (int ) ;
 struct kernfs_open_file* kernfs_of (struct file*) ;
 int kernfs_put_active (int ) ;
 int stub1 (struct vm_fault*) ;

__attribute__((used)) static vm_fault_t kernfs_vma_fault(struct vm_fault *vmf)
{
 struct file *file = vmf->vma->vm_file;
 struct kernfs_open_file *of = kernfs_of(file);
 vm_fault_t ret;

 if (!of->vm_ops)
  return VM_FAULT_SIGBUS;

 if (!kernfs_get_active(of->kn))
  return VM_FAULT_SIGBUS;

 ret = VM_FAULT_SIGBUS;
 if (of->vm_ops->fault)
  ret = of->vm_ops->fault(vmf);

 kernfs_put_active(of->kn);
 return ret;
}

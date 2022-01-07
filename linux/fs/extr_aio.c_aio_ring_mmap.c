
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; int vm_flags; } ;
struct file {int dummy; } ;


 int VM_DONTEXPAND ;
 int aio_ring_vm_ops ;

__attribute__((used)) static int aio_ring_mmap(struct file *file, struct vm_area_struct *vma)
{
 vma->vm_flags |= VM_DONTEXPAND;
 vma->vm_ops = &aio_ring_vm_ops;
 return 0;
}

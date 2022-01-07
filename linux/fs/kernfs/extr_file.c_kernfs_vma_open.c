
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct file* vm_file; } ;
struct kernfs_open_file {int kn; TYPE_1__* vm_ops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct vm_area_struct*) ;} ;


 int kernfs_get_active (int ) ;
 struct kernfs_open_file* kernfs_of (struct file*) ;
 int kernfs_put_active (int ) ;
 int stub1 (struct vm_area_struct*) ;

__attribute__((used)) static void kernfs_vma_open(struct vm_area_struct *vma)
{
 struct file *file = vma->vm_file;
 struct kernfs_open_file *of = kernfs_of(file);

 if (!of->vm_ops)
  return;

 if (!kernfs_get_active(of->kn))
  return;

 if (of->vm_ops->open)
  of->vm_ops->open(vma);

 kernfs_put_active(of->kn);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_ops; struct file* vm_file; } ;
struct kernfs_ops {int (* mmap ) (struct kernfs_open_file*,struct vm_area_struct*) ;} ;
struct kernfs_open_file {int mmapped; int mutex; TYPE_2__* kn; TYPE_1__* vm_ops; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ close; } ;


 int EINVAL ;
 int ENODEV ;
 int KERNFS_HAS_MMAP ;
 int kernfs_get_active (TYPE_2__*) ;
 struct kernfs_open_file* kernfs_of (struct file*) ;
 struct kernfs_ops* kernfs_ops (TYPE_2__*) ;
 int kernfs_put_active (TYPE_2__*) ;
 TYPE_1__ kernfs_vm_ops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct kernfs_open_file*,struct vm_area_struct*) ;

__attribute__((used)) static int kernfs_fop_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct kernfs_open_file *of = kernfs_of(file);
 const struct kernfs_ops *ops;
 int rc;
 if (!(of->kn->flags & KERNFS_HAS_MMAP))
  return -ENODEV;

 mutex_lock(&of->mutex);

 rc = -ENODEV;
 if (!kernfs_get_active(of->kn))
  goto out_unlock;

 ops = kernfs_ops(of->kn);
 rc = ops->mmap(of, vma);
 if (rc)
  goto out_put;






 if (vma->vm_file != file)
  goto out_put;

 rc = -EINVAL;
 if (of->mmapped && of->vm_ops != vma->vm_ops)
  goto out_put;





 rc = -EINVAL;
 if (vma->vm_ops && vma->vm_ops->close)
  goto out_put;

 rc = 0;
 of->mmapped = 1;
 of->vm_ops = vma->vm_ops;
 vma->vm_ops = &kernfs_vm_ops;
out_put:
 kernfs_put_active(of->kn);
out_unlock:
 mutex_unlock(&of->mutex);

 return rc;
}

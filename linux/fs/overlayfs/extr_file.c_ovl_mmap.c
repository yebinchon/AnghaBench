
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {struct file* vm_file; } ;
struct file {TYPE_1__* f_op; struct file* private_data; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int i_sb; } ;
struct TYPE_3__ {int mmap; } ;


 int EIO ;
 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 int call_mmap (struct file*,struct vm_area_struct*) ;
 TYPE_2__* file_inode (struct file*) ;
 int fput (struct file*) ;
 struct file* get_file (struct file*) ;
 int ovl_file_accessed (struct file*) ;
 struct cred* ovl_override_creds (int ) ;
 int revert_creds (struct cred const*) ;

__attribute__((used)) static int ovl_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct file *realfile = file->private_data;
 const struct cred *old_cred;
 int ret;

 if (!realfile->f_op->mmap)
  return -ENODEV;

 if (WARN_ON(file != vma->vm_file))
  return -EIO;

 vma->vm_file = get_file(realfile);

 old_cred = ovl_override_creds(file_inode(file)->i_sb);
 ret = call_mmap(vma->vm_file, vma);
 revert_creds(old_cred);

 if (ret) {

  fput(realfile);
 } else {

  fput(file);
 }

 ovl_file_accessed(file);

 return ret;
}

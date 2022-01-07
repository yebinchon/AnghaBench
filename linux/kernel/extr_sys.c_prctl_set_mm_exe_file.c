
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; struct vm_area_struct* vm_next; } ;
struct mm_struct {int mmap_sem; int exe_file; struct vm_area_struct* mmap; } ;
struct inode {int i_mode; } ;
struct file {int f_path; } ;
struct fd {TYPE_2__* file; } ;
struct TYPE_6__ {int f_path; } ;
struct TYPE_5__ {int f_path; } ;


 int EACCES ;
 int EBADF ;
 int EBUSY ;
 int MAY_EXEC ;
 int S_ISREG (int ) ;
 int down_read (int *) ;
 struct fd fdget (unsigned int) ;
 int fdput (struct fd) ;
 struct inode* file_inode (TYPE_2__*) ;
 int fput (struct file*) ;
 int get_file (TYPE_2__*) ;
 struct file* get_mm_exe_file (struct mm_struct*) ;
 int inode_permission (struct inode*,int ) ;
 scalar_t__ path_equal (int *,int *) ;
 scalar_t__ path_noexec (int *) ;
 int up_read (int *) ;
 struct file* xchg (int *,TYPE_2__*) ;

__attribute__((used)) static int prctl_set_mm_exe_file(struct mm_struct *mm, unsigned int fd)
{
 struct fd exe;
 struct file *old_exe, *exe_file;
 struct inode *inode;
 int err;

 exe = fdget(fd);
 if (!exe.file)
  return -EBADF;

 inode = file_inode(exe.file);






 err = -EACCES;
 if (!S_ISREG(inode->i_mode) || path_noexec(&exe.file->f_path))
  goto exit;

 err = inode_permission(inode, MAY_EXEC);
 if (err)
  goto exit;




 exe_file = get_mm_exe_file(mm);
 err = -EBUSY;
 if (exe_file) {
  struct vm_area_struct *vma;

  down_read(&mm->mmap_sem);
  for (vma = mm->mmap; vma; vma = vma->vm_next) {
   if (!vma->vm_file)
    continue;
   if (path_equal(&vma->vm_file->f_path,
           &exe_file->f_path))
    goto exit_err;
  }

  up_read(&mm->mmap_sem);
  fput(exe_file);
 }

 err = 0;

 get_file(exe.file);
 old_exe = xchg(&mm->exe_file, exe.file);
 if (old_exe)
  fput(old_exe);
exit:
 fdput(exe);
 return err;
exit_err:
 up_read(&mm->mmap_sem);
 fput(exe_file);
 goto exit;
}

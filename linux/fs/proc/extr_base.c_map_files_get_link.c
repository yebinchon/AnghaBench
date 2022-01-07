
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
struct task_struct {int dummy; } ;
struct path {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct path f_path; } ;


 int ENOENT ;
 int d_inode (struct dentry*) ;
 int dname_to_vma_addr (struct dentry*,unsigned long*,unsigned long*) ;
 int down_read_killable (int *) ;
 struct vm_area_struct* find_exact_vma (struct mm_struct*,unsigned long,unsigned long) ;
 struct task_struct* get_proc_task (int ) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int path_get (struct path*) ;
 int put_task_struct (struct task_struct*) ;
 int up_read (int *) ;

__attribute__((used)) static int map_files_get_link(struct dentry *dentry, struct path *path)
{
 unsigned long vm_start, vm_end;
 struct vm_area_struct *vma;
 struct task_struct *task;
 struct mm_struct *mm;
 int rc;

 rc = -ENOENT;
 task = get_proc_task(d_inode(dentry));
 if (!task)
  goto out;

 mm = get_task_mm(task);
 put_task_struct(task);
 if (!mm)
  goto out;

 rc = dname_to_vma_addr(dentry, &vm_start, &vm_end);
 if (rc)
  goto out_mmput;

 rc = down_read_killable(&mm->mmap_sem);
 if (rc)
  goto out_mmput;

 rc = -ENOENT;
 vma = find_exact_vma(mm, vm_start, vm_end);
 if (vma && vma->vm_file) {
  *path = vma->vm_file->f_path;
  path_get(path);
  rc = 0;
 }
 up_read(&mm->mmap_sem);

out_mmput:
 mmput(mm);
out:
 return rc;
}

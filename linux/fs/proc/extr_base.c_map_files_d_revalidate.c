
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct inode {int i_gid; int i_uid; } ;
struct dentry {int dummy; } ;


 int ECHILD ;
 scalar_t__ IS_ERR_OR_NULL (struct mm_struct*) ;
 unsigned int LOOKUP_RCU ;
 int PTRACE_MODE_READ_FSCREDS ;
 struct inode* d_inode (struct dentry*) ;
 int dname_to_vma_addr (struct dentry*,unsigned long*,unsigned long*) ;
 int down_read_killable (int *) ;
 int find_exact_vma (struct mm_struct*,unsigned long,unsigned long) ;
 struct task_struct* get_proc_task (struct inode*) ;
 struct mm_struct* mm_access (struct task_struct*,int ) ;
 int mmput (struct mm_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int security_task_to_inode (struct task_struct*,struct inode*) ;
 int task_dump_owner (struct task_struct*,int ,int *,int *) ;
 int up_read (int *) ;

__attribute__((used)) static int map_files_d_revalidate(struct dentry *dentry, unsigned int flags)
{
 unsigned long vm_start, vm_end;
 bool exact_vma_exists = 0;
 struct mm_struct *mm = ((void*)0);
 struct task_struct *task;
 struct inode *inode;
 int status = 0;

 if (flags & LOOKUP_RCU)
  return -ECHILD;

 inode = d_inode(dentry);
 task = get_proc_task(inode);
 if (!task)
  goto out_notask;

 mm = mm_access(task, PTRACE_MODE_READ_FSCREDS);
 if (IS_ERR_OR_NULL(mm))
  goto out;

 if (!dname_to_vma_addr(dentry, &vm_start, &vm_end)) {
  status = down_read_killable(&mm->mmap_sem);
  if (!status) {
   exact_vma_exists = !!find_exact_vma(mm, vm_start,
           vm_end);
   up_read(&mm->mmap_sem);
  }
 }

 mmput(mm);

 if (exact_vma_exists) {
  task_dump_owner(task, 0, &inode->i_uid, &inode->i_gid);

  security_task_to_inode(task, inode);
  status = 1;
 }

out:
 put_task_struct(task);

out_notask:
 return status;
}

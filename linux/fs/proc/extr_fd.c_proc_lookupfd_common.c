
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int dummy; } ;
struct fd_data {unsigned int fd; int mode; } ;
struct dentry {int d_name; } ;
typedef struct dentry* (* instantiate_t ) (struct dentry*,struct task_struct*,struct fd_data*) ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct task_struct* get_proc_task (struct inode*) ;
 unsigned int name_to_int (int *) ;
 int put_task_struct (struct task_struct*) ;
 int tid_fd_mode (struct task_struct*,unsigned int,int *) ;

__attribute__((used)) static struct dentry *proc_lookupfd_common(struct inode *dir,
        struct dentry *dentry,
        instantiate_t instantiate)
{
 struct task_struct *task = get_proc_task(dir);
 struct fd_data data = {.fd = name_to_int(&dentry->d_name)};
 struct dentry *result = ERR_PTR(-ENOENT);

 if (!task)
  goto out_no_task;
 if (data.fd == ~0U)
  goto out;
 if (!tid_fd_mode(task, data.fd, &data.mode))
  goto out;

 result = instantiate(dentry, task, &data);
out:
 put_task_struct(task);
out_no_task:
 return result;
}

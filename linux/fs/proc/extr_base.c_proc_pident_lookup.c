
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pid_entry {scalar_t__ len; int name; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int memcmp (int ,int ,scalar_t__) ;
 struct dentry* proc_pident_instantiate (struct dentry*,struct task_struct*,struct pid_entry const*) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static struct dentry *proc_pident_lookup(struct inode *dir,
      struct dentry *dentry,
      const struct pid_entry *p,
      const struct pid_entry *end)
{
 struct task_struct *task = get_proc_task(dir);
 struct dentry *res = ERR_PTR(-ENOENT);

 if (!task)
  goto out_no_task;





 for (; p < end; p++) {
  if (p->len != dentry->d_name.len)
   continue;
  if (!memcmp(dentry->d_name.name, p->name, p->len)) {
   res = proc_pident_instantiate(dentry, task, p);
   break;
  }
 }
 put_task_struct(task);
out_no_task:
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct dentry {TYPE_1__* d_sb; int d_name; } ;
struct TYPE_2__ {struct pid_namespace* s_fs_info; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct task_struct* find_task_by_pid_ns (unsigned int,struct pid_namespace*) ;
 int get_task_struct (struct task_struct*) ;
 unsigned int name_to_int (int *) ;
 struct dentry* proc_pid_instantiate (struct dentry*,struct task_struct*,int *) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct dentry *proc_pid_lookup(struct dentry *dentry, unsigned int flags)
{
 struct task_struct *task;
 unsigned tgid;
 struct pid_namespace *ns;
 struct dentry *result = ERR_PTR(-ENOENT);

 tgid = name_to_int(&dentry->d_name);
 if (tgid == ~0U)
  goto out;

 ns = dentry->d_sb->s_fs_info;
 rcu_read_lock();
 task = find_task_by_pid_ns(tgid, ns);
 if (task)
  get_task_struct(task);
 rcu_read_unlock();
 if (!task)
  goto out;

 result = proc_pid_instantiate(dentry, task, ((void*)0));
 put_task_struct(task);
out:
 return result;
}

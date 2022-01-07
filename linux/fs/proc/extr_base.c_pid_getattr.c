
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct path {int dentry; } ;
struct kstat {int gid; int uid; } ;
struct inode {int i_mode; } ;


 int ENOENT ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int HIDEPID_INVISIBLE ;
 int PIDTYPE_PID ;
 struct inode* d_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int has_pid_permissions (struct pid_namespace*,struct task_struct*,int ) ;
 struct task_struct* pid_task (int ,int ) ;
 int proc_pid (struct inode*) ;
 struct pid_namespace* proc_pid_ns (struct inode*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_dump_owner (struct task_struct*,int ,int *,int *) ;

int pid_getattr(const struct path *path, struct kstat *stat,
  u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_inode(path->dentry);
 struct pid_namespace *pid = proc_pid_ns(inode);
 struct task_struct *task;

 generic_fillattr(inode, stat);

 stat->uid = GLOBAL_ROOT_UID;
 stat->gid = GLOBAL_ROOT_GID;
 rcu_read_lock();
 task = pid_task(proc_pid(inode), PIDTYPE_PID);
 if (task) {
  if (!has_pid_permissions(pid, task, HIDEPID_INVISIBLE)) {
   rcu_read_unlock();




   return -ENOENT;
  }
  task_dump_owner(task, inode->i_mode, &stat->uid, &stat->gid);
 }
 rcu_read_unlock();
 return 0;
}

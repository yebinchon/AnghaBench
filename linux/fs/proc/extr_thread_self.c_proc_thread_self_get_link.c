
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
typedef int pid_t ;


 int ECHILD ;
 int ENOENT ;
 int ENOMEM ;
 char const* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int current ;
 int kfree_link ;
 char* kmalloc (int,int ) ;
 struct pid_namespace* proc_pid_ns (struct inode*) ;
 int set_delayed_call (struct delayed_call*,int ,char*) ;
 int sprintf (char*,char*,int,int) ;
 int task_pid_nr_ns (int ,struct pid_namespace*) ;
 int task_tgid_nr_ns (int ,struct pid_namespace*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const char *proc_thread_self_get_link(struct dentry *dentry,
          struct inode *inode,
          struct delayed_call *done)
{
 struct pid_namespace *ns = proc_pid_ns(inode);
 pid_t tgid = task_tgid_nr_ns(current, ns);
 pid_t pid = task_pid_nr_ns(current, ns);
 char *name;

 if (!pid)
  return ERR_PTR(-ENOENT);
 name = kmalloc(10 + 6 + 10 + 1, dentry ? GFP_KERNEL : GFP_ATOMIC);
 if (unlikely(!name))
  return dentry ? ERR_PTR(-ENOMEM) : ERR_PTR(-ECHILD);
 sprintf(name, "%u/task/%u", tgid, pid);
 set_delayed_call(done, kfree_link, name);
 return name;
}

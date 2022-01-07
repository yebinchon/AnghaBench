
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int fs; struct nsproxy* nsproxy; } ;
struct seq_file {struct proc_mounts* private; int poll_event; } ;
struct path {int dummy; } ;
struct proc_mounts {int (* show ) (struct seq_file*,struct vfsmount*) ;unsigned long long cached_event; struct path root; struct mnt_namespace* ns; } ;
struct nsproxy {struct mnt_namespace* mnt_ns; } ;
struct mnt_namespace {int event; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int EINVAL ;
 int ENOENT ;
 int get_fs_root (int ,struct path*) ;
 int get_mnt_ns (struct mnt_namespace*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int mounts_op ;
 int path_put (struct path*) ;
 int put_mnt_ns (struct mnt_namespace*) ;
 int put_task_struct (struct task_struct*) ;
 int seq_open_private (struct file*,int *,int) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static int mounts_open_common(struct inode *inode, struct file *file,
         int (*show)(struct seq_file *, struct vfsmount *))
{
 struct task_struct *task = get_proc_task(inode);
 struct nsproxy *nsp;
 struct mnt_namespace *ns = ((void*)0);
 struct path root;
 struct proc_mounts *p;
 struct seq_file *m;
 int ret = -EINVAL;

 if (!task)
  goto err;

 task_lock(task);
 nsp = task->nsproxy;
 if (!nsp || !nsp->mnt_ns) {
  task_unlock(task);
  put_task_struct(task);
  goto err;
 }
 ns = nsp->mnt_ns;
 get_mnt_ns(ns);
 if (!task->fs) {
  task_unlock(task);
  put_task_struct(task);
  ret = -ENOENT;
  goto err_put_ns;
 }
 get_fs_root(task->fs, &root);
 task_unlock(task);
 put_task_struct(task);

 ret = seq_open_private(file, &mounts_op, sizeof(struct proc_mounts));
 if (ret)
  goto err_put_path;

 m = file->private_data;
 m->poll_event = ns->event;

 p = m->private;
 p->ns = ns;
 p->root = root;
 p->show = show;
 p->cached_event = ~0ULL;

 return 0;

 err_put_path:
 path_put(&root);
 err_put_ns:
 put_mnt_ns(ns);
 err:
 return ret;
}

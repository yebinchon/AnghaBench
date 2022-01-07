
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct pid_namespace {struct dentry* proc_thread_self; } ;
struct inode {int i_mode; int * i_op; int i_gid; int i_uid; int i_ctime; int i_atime; int i_mtime; int i_ino; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int current_time (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (int ,char*) ;
 struct inode* d_inode (int ) ;
 int dput (struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 struct inode* new_inode_pseudo (struct super_block*) ;
 int pr_err (char*) ;
 struct pid_namespace* proc_pid_ns (struct inode*) ;
 int proc_thread_self_inode_operations ;
 int thread_self_inum ;

int proc_setup_thread_self(struct super_block *s)
{
 struct inode *root_inode = d_inode(s->s_root);
 struct pid_namespace *ns = proc_pid_ns(root_inode);
 struct dentry *thread_self;
 int ret = -ENOMEM;

 inode_lock(root_inode);
 thread_self = d_alloc_name(s->s_root, "thread-self");
 if (thread_self) {
  struct inode *inode = new_inode_pseudo(s);
  if (inode) {
   inode->i_ino = thread_self_inum;
   inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
   inode->i_mode = S_IFLNK | S_IRWXUGO;
   inode->i_uid = GLOBAL_ROOT_UID;
   inode->i_gid = GLOBAL_ROOT_GID;
   inode->i_op = &proc_thread_self_inode_operations;
   d_add(thread_self, inode);
   ret = 0;
  } else {
   dput(thread_self);
  }
 }
 inode_unlock(root_inode);

 if (ret)
  pr_err("proc_fill_super: can't allocate /proc/thread_self\n");
 else
  ns->proc_thread_self = thread_self;

 return ret;
}

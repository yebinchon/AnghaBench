
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct pid_namespace {struct dentry* proc_self; } ;
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
 int proc_self_inode_operations ;
 int self_inum ;

int proc_setup_self(struct super_block *s)
{
 struct inode *root_inode = d_inode(s->s_root);
 struct pid_namespace *ns = proc_pid_ns(root_inode);
 struct dentry *self;
 int ret = -ENOMEM;

 inode_lock(root_inode);
 self = d_alloc_name(s->s_root, "self");
 if (self) {
  struct inode *inode = new_inode_pseudo(s);
  if (inode) {
   inode->i_ino = self_inum;
   inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
   inode->i_mode = S_IFLNK | S_IRWXUGO;
   inode->i_uid = GLOBAL_ROOT_UID;
   inode->i_gid = GLOBAL_ROOT_GID;
   inode->i_op = &proc_self_inode_operations;
   d_add(self, inode);
   ret = 0;
  } else {
   dput(self);
  }
 }
 inode_unlock(root_inode);

 if (ret)
  pr_err("proc_fill_super: can't allocate /proc/self\n");
 else
  ns->proc_self = self;

 return ret;
}

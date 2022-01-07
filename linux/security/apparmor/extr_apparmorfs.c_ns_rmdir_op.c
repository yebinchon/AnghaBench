
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_private; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {struct inode* d_inode; TYPE_1__ d_name; } ;
struct aa_ns {int lock; int sub_ns; int level; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int AA_MAY_LOAD_POLICY ;
 int ENOENT ;
 int I_MUTEX_PARENT ;
 int __aa_findn_ns (int *,int ,int ) ;
 int __aa_remove_ns (struct aa_ns*) ;
 struct aa_ns* aa_get_ns (int ) ;
 int aa_may_manage_policy (struct aa_label*,int *,int ) ;
 int aa_put_ns (struct aa_ns*) ;
 struct aa_label* begin_current_label_crit_section () ;
 int end_current_label_crit_section (struct aa_label*) ;
 int inode_lock (struct inode*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct dentry* ns_dir (struct aa_ns*) ;

__attribute__((used)) static int ns_rmdir_op(struct inode *dir, struct dentry *dentry)
{
 struct aa_ns *ns, *parent;

 struct aa_label *label;
 int error;

 label = begin_current_label_crit_section();
 error = aa_may_manage_policy(label, ((void*)0), AA_MAY_LOAD_POLICY);
 end_current_label_crit_section(label);
 if (error)
  return error;

 parent = aa_get_ns(dir->i_private);




 inode_unlock(dir);
 inode_unlock(dentry->d_inode);

 mutex_lock_nested(&parent->lock, parent->level);
 ns = aa_get_ns(__aa_findn_ns(&parent->sub_ns, dentry->d_name.name,
         dentry->d_name.len));
 if (!ns) {
  error = -ENOENT;
  goto out;
 }
 AA_BUG(ns_dir(ns) != dentry);

 __aa_remove_ns(ns);
 aa_put_ns(ns);

out:
 mutex_unlock(&parent->lock);
 inode_lock_nested(dir, I_MUTEX_PARENT);
 inode_lock(dentry->d_inode);
 aa_put_ns(parent);

 return error;
}

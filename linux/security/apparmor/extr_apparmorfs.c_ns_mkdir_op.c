
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_private; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct aa_ns {int lock; int level; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int AA_MAY_LOAD_POLICY ;
 scalar_t__ IS_ERR (struct aa_ns*) ;
 int I_MUTEX_PARENT ;
 int PTR_ERR (struct aa_ns*) ;
 int READ_ONCE (int ) ;
 int S_IFDIR ;
 struct aa_ns* __aa_find_or_create_ns (struct aa_ns*,int ,struct dentry*) ;
 int __aafs_setup_d_inode (struct inode*,struct dentry*,int,int *,int *,int *,int *) ;
 struct aa_ns* aa_get_ns (int ) ;
 int aa_may_manage_policy (struct aa_label*,int *,int ) ;
 int aa_put_ns (struct aa_ns*) ;
 int aafs_count ;
 int aafs_mnt ;
 int aafs_ops ;
 struct aa_label* begin_current_label_crit_section () ;
 struct inode* d_inode (int ) ;
 int end_current_label_crit_section (struct aa_label*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int ns_subns_dir (struct aa_ns*) ;
 int simple_pin_fs (int *,int *,int *) ;
 int simple_release_fs (int *,int *) ;

__attribute__((used)) static int ns_mkdir_op(struct inode *dir, struct dentry *dentry, umode_t mode)
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
 AA_BUG(d_inode(ns_subns_dir(parent)) != dir);




 inode_unlock(dir);
 error = simple_pin_fs(&aafs_ops, &aafs_mnt, &aafs_count);
 mutex_lock_nested(&parent->lock, parent->level);
 inode_lock_nested(dir, I_MUTEX_PARENT);
 if (error)
  goto out;

 error = __aafs_setup_d_inode(dir, dentry, mode | S_IFDIR, ((void*)0),
         ((void*)0), ((void*)0), ((void*)0));
 if (error)
  goto out_pin;

 ns = __aa_find_or_create_ns(parent, READ_ONCE(dentry->d_name.name),
        dentry);
 if (IS_ERR(ns)) {
  error = PTR_ERR(ns);
  ns = ((void*)0);
 }

 aa_put_ns(ns);
out_pin:
 if (error)
  simple_release_fs(&aafs_mnt, &aafs_count);
out:
 mutex_unlock(&parent->lock);
 aa_put_ns(parent);

 return error;
}

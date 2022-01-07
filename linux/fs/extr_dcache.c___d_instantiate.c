
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_dentry; } ;
struct TYPE_2__ {int d_alias; } ;
struct dentry {int d_flags; int d_lock; int d_seq; TYPE_1__ d_u; } ;


 int DCACHE_LRU_LIST ;
 int WARN_ON (int ) ;
 int __d_set_inode_and_type (struct dentry*,struct inode*,unsigned int) ;
 unsigned int d_flags_for_inode (struct inode*) ;
 int d_in_lookup (struct dentry*) ;
 int fsnotify_update_flags (struct dentry*) ;
 int hlist_add_head (int *,int *) ;
 int nr_dentry_negative ;
 int raw_write_seqcount_begin (int *) ;
 int raw_write_seqcount_end (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int this_cpu_dec (int ) ;

__attribute__((used)) static void __d_instantiate(struct dentry *dentry, struct inode *inode)
{
 unsigned add_flags = d_flags_for_inode(inode);
 WARN_ON(d_in_lookup(dentry));

 spin_lock(&dentry->d_lock);



 if (dentry->d_flags & DCACHE_LRU_LIST)
  this_cpu_dec(nr_dentry_negative);
 hlist_add_head(&dentry->d_u.d_alias, &inode->i_dentry);
 raw_write_seqcount_begin(&dentry->d_seq);
 __d_set_inode_and_type(dentry, inode, add_flags);
 raw_write_seqcount_end(&dentry->d_seq);
 fsnotify_update_flags(dentry);
 spin_unlock(&dentry->d_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {struct dentry* s_root; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {struct dentry* priv_root; } ;
struct TYPE_5__ {int i_flags; } ;


 int IS_ERR (struct dentry*) ;
 int PRIVROOT_NAME ;
 int PTR_ERR (struct dentry*) ;
 TYPE_4__* REISERFS_SB (struct super_block*) ;
 int S_PRIVATE ;
 TYPE_1__* d_inode (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int d_set_d_op (struct dentry*,int *) ;
 int inode_lock (TYPE_1__*) ;
 int inode_unlock (TYPE_1__*) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 int strlen (int ) ;
 int xattr_lookup_poison_ops ;

int reiserfs_lookup_privroot(struct super_block *s)
{
 struct dentry *dentry;
 int err = 0;


 inode_lock(d_inode(s->s_root));
 dentry = lookup_one_len(PRIVROOT_NAME, s->s_root,
    strlen(PRIVROOT_NAME));
 if (!IS_ERR(dentry)) {
  REISERFS_SB(s)->priv_root = dentry;
  d_set_d_op(dentry, &xattr_lookup_poison_ops);
  if (d_really_is_positive(dentry))
   d_inode(dentry)->i_flags |= S_PRIVATE;
 } else
  err = PTR_ERR(dentry);
 inode_unlock(d_inode(s->s_root));

 return err;
}

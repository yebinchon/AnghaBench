
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; int s_xattr; struct dentry* s_root; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_mount_opt; struct dentry* xattr_root; struct dentry* priv_root; } ;


 int IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int REISERFS_POSIXACL ;
 TYPE_1__* REISERFS_SB (struct super_block*) ;
 int REISERFS_XATTRS_USER ;
 int SB_POSIXACL ;
 int SB_RDONLY ;
 int XAROOT_NAME ;
 int clear_bit (int ,int *) ;
 int create_privroot (struct dentry*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 scalar_t__ reiserfs_posixacl (struct super_block*) ;
 int reiserfs_xattr_handlers ;
 int strlen (int ) ;
 int xattr_mount_check (struct super_block*) ;

int reiserfs_xattr_init(struct super_block *s, int mount_flags)
{
 int err = 0;
 struct dentry *privroot = REISERFS_SB(s)->priv_root;

 err = xattr_mount_check(s);
 if (err)
  goto error;

 if (d_really_is_negative(privroot) && !(mount_flags & SB_RDONLY)) {
  inode_lock(d_inode(s->s_root));
  err = create_privroot(REISERFS_SB(s)->priv_root);
  inode_unlock(d_inode(s->s_root));
 }

 if (d_really_is_positive(privroot)) {
  s->s_xattr = reiserfs_xattr_handlers;
  inode_lock(d_inode(privroot));
  if (!REISERFS_SB(s)->xattr_root) {
   struct dentry *dentry;

   dentry = lookup_one_len(XAROOT_NAME, privroot,
      strlen(XAROOT_NAME));
   if (!IS_ERR(dentry))
    REISERFS_SB(s)->xattr_root = dentry;
   else
    err = PTR_ERR(dentry);
  }
  inode_unlock(d_inode(privroot));
 }

error:
 if (err) {
  clear_bit(REISERFS_XATTRS_USER, &REISERFS_SB(s)->s_mount_opt);
  clear_bit(REISERFS_POSIXACL, &REISERFS_SB(s)->s_mount_opt);
 }


 if (reiserfs_posixacl(s))
  s->s_flags |= SB_POSIXACL;
 else
  s->s_flags &= ~SB_POSIXACL;

 return err;
}

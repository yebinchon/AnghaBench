
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_smack {int smk_flags; struct smack_known* smk_root; struct smack_known* smk_hat; struct smack_known* smk_floor; struct smack_known* smk_default; } ;
struct super_block {scalar_t__ s_magic; int * s_user_ns; struct superblock_smack* s_security; struct dentry* s_root; } ;
struct smack_mnt_opts {scalar_t__ fstransmute; scalar_t__ fsroot; scalar_t__ fshat; scalar_t__ fsfloor; scalar_t__ fsdefault; } ;
struct smack_known {int dummy; } ;
struct inode_smack {int smk_flags; } ;
struct inode {int * i_security; } ;
struct dentry {int dummy; } ;


 int CAP_MAC_ADMIN ;
 int EPERM ;
 scalar_t__ IS_ERR (struct smack_known*) ;
 int PTR_ERR (struct smack_known*) ;
 scalar_t__ RAMFS_MAGIC ;
 int SMK_INODE_TRANSMUTE ;
 int SMK_SB_INITIALIZED ;
 int SMK_SB_UNTRUSTED ;
 scalar_t__ SYSFS_MAGIC ;
 scalar_t__ TMPFS_MAGIC ;
 struct inode* d_backing_inode (struct dentry*) ;
 int init_inode_smack (struct inode*,struct smack_known*) ;
 int init_user_ns ;
 int lsm_inode_alloc (struct inode*) ;
 struct inode_smack* smack_inode (struct inode*) ;
 int smack_privileged (int ) ;
 struct smack_known* smk_import_entry (scalar_t__,int ) ;
 struct smack_known* smk_of_current () ;

__attribute__((used)) static int smack_set_mnt_opts(struct super_block *sb,
  void *mnt_opts,
  unsigned long kern_flags,
  unsigned long *set_kern_flags)
{
 struct dentry *root = sb->s_root;
 struct inode *inode = d_backing_inode(root);
 struct superblock_smack *sp = sb->s_security;
 struct inode_smack *isp;
 struct smack_known *skp;
 struct smack_mnt_opts *opts = mnt_opts;
 bool transmute = 0;

 if (sp->smk_flags & SMK_SB_INITIALIZED)
  return 0;

 if (inode->i_security == ((void*)0)) {
  int rc = lsm_inode_alloc(inode);

  if (rc)
   return rc;
 }

 if (!smack_privileged(CAP_MAC_ADMIN)) {



  if (opts)
   return -EPERM;



  skp = smk_of_current();
  sp->smk_root = skp;
  sp->smk_default = skp;





  if (sb->s_user_ns != &init_user_ns &&
      sb->s_magic != SYSFS_MAGIC && sb->s_magic != TMPFS_MAGIC &&
      sb->s_magic != RAMFS_MAGIC) {
   transmute = 1;
   sp->smk_flags |= SMK_SB_UNTRUSTED;
  }
 }

 sp->smk_flags |= SMK_SB_INITIALIZED;

 if (opts) {
  if (opts->fsdefault) {
   skp = smk_import_entry(opts->fsdefault, 0);
   if (IS_ERR(skp))
    return PTR_ERR(skp);
   sp->smk_default = skp;
  }
  if (opts->fsfloor) {
   skp = smk_import_entry(opts->fsfloor, 0);
   if (IS_ERR(skp))
    return PTR_ERR(skp);
   sp->smk_floor = skp;
  }
  if (opts->fshat) {
   skp = smk_import_entry(opts->fshat, 0);
   if (IS_ERR(skp))
    return PTR_ERR(skp);
   sp->smk_hat = skp;
  }
  if (opts->fsroot) {
   skp = smk_import_entry(opts->fsroot, 0);
   if (IS_ERR(skp))
    return PTR_ERR(skp);
   sp->smk_root = skp;
  }
  if (opts->fstransmute) {
   skp = smk_import_entry(opts->fstransmute, 0);
   if (IS_ERR(skp))
    return PTR_ERR(skp);
   sp->smk_root = skp;
   transmute = 1;
  }
 }




 init_inode_smack(inode, sp->smk_root);

 if (transmute) {
  isp = smack_inode(inode);
  isp->smk_flags |= SMK_INODE_TRANSMUTE;
 }

 return 0;
}

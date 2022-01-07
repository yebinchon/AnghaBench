
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_smack {struct smack_known* smk_root; struct smack_known* smk_default; } ;
struct super_block {int s_magic; struct superblock_smack* s_security; } ;
struct smack_known {int dummy; } ;
struct inode_smack {int smk_flags; int smk_lock; struct smack_known* smk_inode; struct smack_known* smk_mmap; struct smack_known* smk_task; } ;
struct inode {int i_opflags; int i_mode; struct super_block* i_sb; } ;
struct dentry {struct dentry* d_parent; } ;





 int EINVAL ;
 int IOP_XATTR ;
 int IS_ERR (struct smack_known*) ;
 int IS_ERR_OR_NULL (struct smack_known*) ;



 int SMK_INODE_CHANGED ;
 int SMK_INODE_INSTANT ;
 int SMK_INODE_TRANSMUTE ;

 int S_ISDIR (int ) ;
 int S_ISSOCK (int ) ;

 int TRANS_TRUE ;
 int TRANS_TRUE_SIZE ;
 int XATTR_NAME_SMACK ;
 int XATTR_NAME_SMACKEXEC ;
 int XATTR_NAME_SMACKMMAP ;
 int XATTR_NAME_SMACKTRANSMUTE ;
 int __vfs_getxattr (struct dentry*,struct inode*,int ,char*,int) ;
 int __vfs_setxattr (struct dentry*,struct inode*,int ,int ,int,int ) ;
 struct dentry* dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct inode_smack* smack_inode (struct inode*) ;
 struct smack_known smack_known_star ;
 struct smack_known smack_known_web ;
 struct smack_known* smk_fetch (int ,struct inode*,struct dentry*) ;
 void* smk_of_current () ;
 int strncmp (char*,int ,int) ;

__attribute__((used)) static void smack_d_instantiate(struct dentry *opt_dentry, struct inode *inode)
{
 struct super_block *sbp;
 struct superblock_smack *sbsp;
 struct inode_smack *isp;
 struct smack_known *skp;
 struct smack_known *ckp = smk_of_current();
 struct smack_known *final;
 char trattr[TRANS_TRUE_SIZE];
 int transflag = 0;
 int rc;
 struct dentry *dp;

 if (inode == ((void*)0))
  return;

 isp = smack_inode(inode);

 mutex_lock(&isp->smk_lock);




 if (isp->smk_flags & SMK_INODE_INSTANT)
  goto unlockandout;

 sbp = inode->i_sb;
 sbsp = sbp->s_security;




 final = sbsp->smk_default;







 if (opt_dentry->d_parent == opt_dentry) {
  switch (sbp->s_magic) {
  case 134:
  case 135:





   sbsp->smk_root = &smack_known_star;
   sbsp->smk_default = &smack_known_star;
   isp->smk_inode = sbsp->smk_root;
   break;
  case 128:




   isp->smk_inode = smk_of_current();
   break;
  case 132:
   isp->smk_inode = smk_of_current();
   break;
  case 129:




   isp->smk_inode = &smack_known_star;
   break;
  default:
   isp->smk_inode = sbsp->smk_root;
   break;
  }
  isp->smk_flags |= SMK_INODE_INSTANT;
  goto unlockandout;
 }







 switch (sbp->s_magic) {
 case 130:
 case 134:
 case 135:







  final = &smack_known_star;
  break;
 case 133:





  final = ckp;
  break;
 case 131:




  break;
 case 128:





  final = &smack_known_star;







 default:
  if (S_ISSOCK(inode->i_mode)) {
   final = &smack_known_star;
   break;
  }






  if (!(inode->i_opflags & IOP_XATTR))
          break;



  dp = dget(opt_dentry);
  skp = smk_fetch(XATTR_NAME_SMACK, inode, dp);
  if (!IS_ERR_OR_NULL(skp))
   final = skp;




  if (S_ISDIR(inode->i_mode)) {
   if (isp->smk_flags & SMK_INODE_CHANGED) {
    isp->smk_flags &= ~SMK_INODE_CHANGED;
    rc = __vfs_setxattr(dp, inode,
     XATTR_NAME_SMACKTRANSMUTE,
     TRANS_TRUE, TRANS_TRUE_SIZE,
     0);
   } else {
    rc = __vfs_getxattr(dp, inode,
     XATTR_NAME_SMACKTRANSMUTE, trattr,
     TRANS_TRUE_SIZE);
    if (rc >= 0 && strncmp(trattr, TRANS_TRUE,
             TRANS_TRUE_SIZE) != 0)
     rc = -EINVAL;
   }
   if (rc >= 0)
    transflag = SMK_INODE_TRANSMUTE;
  }



  skp = smk_fetch(XATTR_NAME_SMACKEXEC, inode, dp);
  if (IS_ERR(skp) || skp == &smack_known_star ||
      skp == &smack_known_web)
   skp = ((void*)0);
  isp->smk_task = skp;

  skp = smk_fetch(XATTR_NAME_SMACKMMAP, inode, dp);
  if (IS_ERR(skp) || skp == &smack_known_star ||
      skp == &smack_known_web)
   skp = ((void*)0);
  isp->smk_mmap = skp;

  dput(dp);
  break;
 }

 if (final == ((void*)0))
  isp->smk_inode = ckp;
 else
  isp->smk_inode = final;

 isp->smk_flags |= (SMK_INODE_INSTANT | transflag);

unlockandout:
 mutex_unlock(&isp->smk_lock);
 return;
}

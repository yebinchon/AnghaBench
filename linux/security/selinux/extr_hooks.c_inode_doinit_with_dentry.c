
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct superblock_security_struct {int flags; int behavior; scalar_t__ sid; scalar_t__ mntpoint_sid; scalar_t__ def_sid; int isec_lock; int isec_head; } ;
struct inode_security_struct {scalar_t__ initialized; scalar_t__ sclass; int lock; scalar_t__ sid; scalar_t__ task_sid; int list; } ;
struct inode {int i_opflags; int i_mode; TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct superblock_security_struct* s_security; } ;


 int IOP_XATTR ;
 scalar_t__ LABEL_INITIALIZED ;
 scalar_t__ LABEL_INVALID ;
 scalar_t__ LABEL_PENDING ;
 scalar_t__ SECCLASS_FILE ;





 int SE_SBGENFS ;
 int SE_SBGENFS_XATTR ;
 int SE_SBINITIALIZED ;
 int S_ISLNK (int ) ;
 struct dentry* d_find_alias (struct inode*) ;
 struct dentry* d_find_any_alias (struct inode*) ;
 struct dentry* dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_doinit_use_xattr (struct inode*,struct dentry*,scalar_t__,scalar_t__*) ;
 scalar_t__ inode_mode_to_security_class (int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int security_transition_sid (int *,scalar_t__,scalar_t__,scalar_t__,int *,scalar_t__*) ;
 int selinux_genfs_get_sid (struct dentry*,scalar_t__,int,scalar_t__*) ;
 struct inode_security_struct* selinux_inode (struct inode*) ;
 int selinux_state ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int inode_doinit_with_dentry(struct inode *inode, struct dentry *opt_dentry)
{
 struct superblock_security_struct *sbsec = ((void*)0);
 struct inode_security_struct *isec = selinux_inode(inode);
 u32 task_sid, sid = 0;
 u16 sclass;
 struct dentry *dentry;
 int rc = 0;

 if (isec->initialized == LABEL_INITIALIZED)
  return 0;

 spin_lock(&isec->lock);
 if (isec->initialized == LABEL_INITIALIZED)
  goto out_unlock;

 if (isec->sclass == SECCLASS_FILE)
  isec->sclass = inode_mode_to_security_class(inode->i_mode);

 sbsec = inode->i_sb->s_security;
 if (!(sbsec->flags & SE_SBINITIALIZED)) {



  spin_lock(&sbsec->isec_lock);
  if (list_empty(&isec->list))
   list_add(&isec->list, &sbsec->isec_head);
  spin_unlock(&sbsec->isec_lock);
  goto out_unlock;
 }

 sclass = isec->sclass;
 task_sid = isec->task_sid;
 sid = isec->sid;
 isec->initialized = LABEL_PENDING;
 spin_unlock(&isec->lock);

 switch (sbsec->behavior) {
 case 131:
  break;
 case 128:
  if (!(inode->i_opflags & IOP_XATTR)) {
   sid = sbsec->def_sid;
   break;
  }


  if (opt_dentry) {

   dentry = dget(opt_dentry);
  } else {






   dentry = d_find_alias(inode);
   if (!dentry)
    dentry = d_find_any_alias(inode);
  }
  if (!dentry) {
   goto out;
  }

  rc = inode_doinit_use_xattr(inode, dentry, sbsec->def_sid,
         &sid);
  dput(dentry);
  if (rc)
   goto out;
  break;
 case 130:
  sid = task_sid;
  break;
 case 129:

  sid = sbsec->sid;


  rc = security_transition_sid(&selinux_state, task_sid, sid,
          sclass, ((void*)0), &sid);
  if (rc)
   goto out;
  break;
 case 132:
  sid = sbsec->mntpoint_sid;
  break;
 default:

  sid = sbsec->sid;

  if ((sbsec->flags & SE_SBGENFS) && !S_ISLNK(inode->i_mode)) {


   if (opt_dentry) {


    dentry = dget(opt_dentry);
   } else {




    dentry = d_find_alias(inode);
    if (!dentry)
     dentry = d_find_any_alias(inode);
   }
   if (!dentry)
    goto out;
   rc = selinux_genfs_get_sid(dentry, sclass,
         sbsec->flags, &sid);
   if (rc) {
    dput(dentry);
    goto out;
   }

   if ((sbsec->flags & SE_SBGENFS_XATTR) &&
       (inode->i_opflags & IOP_XATTR)) {
    rc = inode_doinit_use_xattr(inode, dentry,
           sid, &sid);
    if (rc) {
     dput(dentry);
     goto out;
    }
   }
   dput(dentry);
  }
  break;
 }

out:
 spin_lock(&isec->lock);
 if (isec->initialized == LABEL_PENDING) {
  if (!sid || rc) {
   isec->initialized = LABEL_INVALID;
   goto out_unlock;
  }

  isec->initialized = LABEL_INITIALIZED;
  isec->sid = sid;
 }

out_unlock:
 spin_unlock(&isec->lock);
 return rc;
}

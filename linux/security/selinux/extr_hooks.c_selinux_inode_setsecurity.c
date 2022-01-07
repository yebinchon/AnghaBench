
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct superblock_security_struct {int flags; } ;
struct inode_security_struct {int lock; int initialized; int sid; int sclass; } ;
struct inode {int i_mode; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct superblock_security_struct* s_security; } ;


 int EACCES ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int LABEL_INITIALIZED ;
 int SBLABEL_MNT ;
 int XATTR_SELINUX_SUFFIX ;
 int inode_mode_to_security_class (int ) ;
 struct inode_security_struct* inode_security_novalidate (struct inode*) ;
 int security_context_to_sid (int *,void const*,size_t,int *,int ) ;
 int selinux_state ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int selinux_inode_setsecurity(struct inode *inode, const char *name,
         const void *value, size_t size, int flags)
{
 struct inode_security_struct *isec = inode_security_novalidate(inode);
 struct superblock_security_struct *sbsec = inode->i_sb->s_security;
 u32 newsid;
 int rc;

 if (strcmp(name, XATTR_SELINUX_SUFFIX))
  return -EOPNOTSUPP;

 if (!(sbsec->flags & SBLABEL_MNT))
  return -EOPNOTSUPP;

 if (!value || !size)
  return -EACCES;

 rc = security_context_to_sid(&selinux_state, value, size, &newsid,
         GFP_KERNEL);
 if (rc)
  return rc;

 spin_lock(&isec->lock);
 isec->sclass = inode_mode_to_security_class(inode->i_mode);
 isec->sid = newsid;
 isec->initialized = LABEL_INITIALIZED;
 spin_unlock(&isec->lock);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode_security_struct {int lock; int initialized; int sid; int sclass; } ;
struct inode {int i_mode; int i_ino; TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_id; } ;


 int LABEL_INITIALIZED ;
 int XATTR_NAME_SELINUX ;
 struct inode_security_struct* backing_inode_security (struct dentry*) ;
 struct inode* d_backing_inode (struct dentry*) ;
 int inode_mode_to_security_class (int ) ;
 int pr_err (char*,int ,int ,int) ;
 int security_context_to_sid_force (int *,void const*,size_t,int *) ;
 int selinux_state ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static void selinux_inode_post_setxattr(struct dentry *dentry, const char *name,
     const void *value, size_t size,
     int flags)
{
 struct inode *inode = d_backing_inode(dentry);
 struct inode_security_struct *isec;
 u32 newsid;
 int rc;

 if (strcmp(name, XATTR_NAME_SELINUX)) {

  return;
 }

 rc = security_context_to_sid_force(&selinux_state, value, size,
        &newsid);
 if (rc) {
  pr_err("SELinux:  unable to map context to SID"
         "for (%s, %lu), rc=%d\n",
         inode->i_sb->s_id, inode->i_ino, -rc);
  return;
 }

 isec = backing_inode_security(dentry);
 spin_lock(&isec->lock);
 isec->sclass = inode_mode_to_security_class(inode->i_mode);
 isec->sid = newsid;
 isec->initialized = LABEL_INITIALIZED;
 spin_unlock(&isec->lock);

 return;
}

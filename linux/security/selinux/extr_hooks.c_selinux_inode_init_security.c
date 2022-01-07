
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct task_security_struct {void* create_sid; } ;
struct superblock_security_struct {int flags; } ;
struct qstr {int dummy; } ;
struct inode_security_struct {int initialized; void* sid; int sclass; } ;
struct inode {int i_mode; TYPE_1__* i_sb; } ;
struct TYPE_5__ {int initialized; } ;
struct TYPE_4__ {struct superblock_security_struct* s_security; } ;


 int EOPNOTSUPP ;
 int LABEL_INITIALIZED ;
 int SBLABEL_MNT ;
 int SE_SBINITIALIZED ;
 char* XATTR_SELINUX_SUFFIX ;
 int current_cred () ;
 int inode_mode_to_security_class (int ) ;
 int security_sid_to_context_force (TYPE_2__*,void*,char**,void**) ;
 struct task_security_struct* selinux_cred (int ) ;
 int selinux_determine_inode_label (struct task_security_struct*,struct inode*,struct qstr const*,int ,void**) ;
 struct inode_security_struct* selinux_inode (struct inode*) ;
 TYPE_2__ selinux_state ;

__attribute__((used)) static int selinux_inode_init_security(struct inode *inode, struct inode *dir,
           const struct qstr *qstr,
           const char **name,
           void **value, size_t *len)
{
 const struct task_security_struct *tsec = selinux_cred(current_cred());
 struct superblock_security_struct *sbsec;
 u32 newsid, clen;
 int rc;
 char *context;

 sbsec = dir->i_sb->s_security;

 newsid = tsec->create_sid;

 rc = selinux_determine_inode_label(selinux_cred(current_cred()),
  dir, qstr,
  inode_mode_to_security_class(inode->i_mode),
  &newsid);
 if (rc)
  return rc;


 if (sbsec->flags & SE_SBINITIALIZED) {
  struct inode_security_struct *isec = selinux_inode(inode);
  isec->sclass = inode_mode_to_security_class(inode->i_mode);
  isec->sid = newsid;
  isec->initialized = LABEL_INITIALIZED;
 }

 if (!selinux_state.initialized || !(sbsec->flags & SBLABEL_MNT))
  return -EOPNOTSUPP;

 if (name)
  *name = XATTR_SELINUX_SUFFIX;

 if (value && len) {
  rc = security_sid_to_context_force(&selinux_state, newsid,
         &context, &clen);
  if (rc)
   return rc;
  *value = context;
  *len = clen;
 }

 return 0;
}

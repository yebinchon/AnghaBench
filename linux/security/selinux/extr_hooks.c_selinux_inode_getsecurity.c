
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode_security_struct {int sid; } ;
struct inode {int dummy; } ;


 int EOPNOTSUPP ;
 int XATTR_SELINUX_SUFFIX ;
 scalar_t__ has_cap_mac_admin (int) ;
 struct inode_security_struct* inode_security (struct inode*) ;
 int kfree (char*) ;
 int security_sid_to_context (int *,int ,char**,int*) ;
 int security_sid_to_context_force (int *,int ,char**,int*) ;
 int selinux_state ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int selinux_inode_getsecurity(struct inode *inode, const char *name, void **buffer, bool alloc)
{
 u32 size;
 int error;
 char *context = ((void*)0);
 struct inode_security_struct *isec;

 if (strcmp(name, XATTR_SELINUX_SUFFIX))
  return -EOPNOTSUPP;
 isec = inode_security(inode);
 if (has_cap_mac_admin(0))
  error = security_sid_to_context_force(&selinux_state,
            isec->sid, &context,
            &size);
 else
  error = security_sid_to_context(&selinux_state, isec->sid,
      &context, &size);
 if (error)
  return error;
 error = size;
 if (alloc) {
  *buffer = context;
  goto out_nofree;
 }
 kfree(context);
out_nofree:
 return error;
}

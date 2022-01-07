
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_security_struct {int create_sid; } ;
struct inode_security_struct {int sid; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;


 int KERNEL_SERVICE__CREATE_FILES_AS ;
 int SECCLASS_KERNEL_SERVICE ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 struct inode_security_struct* inode_security (struct inode*) ;
 struct task_security_struct* selinux_cred (struct cred*) ;
 int selinux_state ;

__attribute__((used)) static int selinux_kernel_create_files_as(struct cred *new, struct inode *inode)
{
 struct inode_security_struct *isec = inode_security(inode);
 struct task_security_struct *tsec = selinux_cred(new);
 u32 sid = current_sid();
 int ret;

 ret = avc_has_perm(&selinux_state,
      sid, isec->sid,
      SECCLASS_KERNEL_SERVICE,
      KERNEL_SERVICE__CREATE_FILES_AS,
      ((void*)0));

 if (ret == 0)
  tsec->create_sid = isec->sid;
 return ret;
}

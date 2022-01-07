
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct inode_security_struct {scalar_t__ sid; } ;
struct file_security_struct {scalar_t__ sid; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct file* file; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int FD__USE ;
 int LSM_AUDIT_DATA_FILE ;
 int SECCLASS_FD ;
 int SECCLASS_SYSTEM ;
 int SYSTEM__MODULE_LOAD ;
 int avc_has_perm (int *,scalar_t__,scalar_t__,int ,int ,struct common_audit_data*) ;
 scalar_t__ current_sid () ;
 int file_inode (struct file*) ;
 struct inode_security_struct* inode_security (int ) ;
 struct file_security_struct* selinux_file (struct file*) ;
 int selinux_state ;

__attribute__((used)) static int selinux_kernel_module_from_file(struct file *file)
{
 struct common_audit_data ad;
 struct inode_security_struct *isec;
 struct file_security_struct *fsec;
 u32 sid = current_sid();
 int rc;


 if (file == ((void*)0))
  return avc_has_perm(&selinux_state,
        sid, sid, SECCLASS_SYSTEM,
     SYSTEM__MODULE_LOAD, ((void*)0));



 ad.type = LSM_AUDIT_DATA_FILE;
 ad.u.file = file;

 fsec = selinux_file(file);
 if (sid != fsec->sid) {
  rc = avc_has_perm(&selinux_state,
      sid, fsec->sid, SECCLASS_FD, FD__USE, &ad);
  if (rc)
   return rc;
 }

 isec = inode_security(file_inode(file));
 return avc_has_perm(&selinux_state,
       sid, isec->sid, SECCLASS_SYSTEM,
    SYSTEM__MODULE_LOAD, &ad);
}

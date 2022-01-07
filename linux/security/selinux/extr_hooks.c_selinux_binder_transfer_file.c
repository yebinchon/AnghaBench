
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct task_struct {int dummy; } ;
struct inode_security_struct {scalar_t__ sid; int sclass; } ;
struct file_security_struct {scalar_t__ sid; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {TYPE_2__ path; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int FD__USE ;
 int IS_PRIVATE (int ) ;
 int LSM_AUDIT_DATA_PATH ;
 int SECCLASS_FD ;
 int avc_has_perm (int *,scalar_t__,scalar_t__,int ,int ,struct common_audit_data*) ;
 struct inode_security_struct* backing_inode_security (struct dentry*) ;
 int bpf_fd_pass (struct file*,scalar_t__) ;
 int d_backing_inode (struct dentry*) ;
 int file_to_av (struct file*) ;
 struct file_security_struct* selinux_file (struct file*) ;
 int selinux_state ;
 scalar_t__ task_sid (struct task_struct*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int selinux_binder_transfer_file(struct task_struct *from,
     struct task_struct *to,
     struct file *file)
{
 u32 sid = task_sid(to);
 struct file_security_struct *fsec = selinux_file(file);
 struct dentry *dentry = file->f_path.dentry;
 struct inode_security_struct *isec;
 struct common_audit_data ad;
 int rc;

 ad.type = LSM_AUDIT_DATA_PATH;
 ad.u.path = file->f_path;

 if (sid != fsec->sid) {
  rc = avc_has_perm(&selinux_state,
      sid, fsec->sid,
      SECCLASS_FD,
      FD__USE,
      &ad);
  if (rc)
   return rc;
 }







 if (unlikely(IS_PRIVATE(d_backing_inode(dentry))))
  return 0;

 isec = backing_inode_security(dentry);
 return avc_has_perm(&selinux_state,
       sid, isec->sid, isec->sclass, file_to_av(file),
       &ad);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct file {int f_flags; } ;


 int AUDIT_INTEGRITY_STATUS ;
 int IMA_FS_BUSY ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int S_IWUSR ;
 int clear_bit (int ,int *) ;
 scalar_t__ ima_check_policy () ;
 int ima_delete_rules () ;
 int ima_fs_flags ;
 int * ima_policy ;
 int ima_update_policy () ;
 int integrity_audit_msg (int ,int *,int *,char*,char const*,int,int ) ;
 int pr_info (char*,char const*) ;
 int securityfs_remove (int *) ;
 int seq_release (struct inode*,struct file*) ;
 int valid_policy ;

__attribute__((used)) static int ima_release_policy(struct inode *inode, struct file *file)
{
 const char *cause = valid_policy ? "completed" : "failed";

 if ((file->f_flags & O_ACCMODE) == O_RDONLY)
  return seq_release(inode, file);

 if (valid_policy && ima_check_policy() < 0) {
  cause = "failed";
  valid_policy = 0;
 }

 pr_info("policy update %s\n", cause);
 integrity_audit_msg(AUDIT_INTEGRITY_STATUS, ((void*)0), ((void*)0),
       "policy_update", cause, !valid_policy, 0);

 if (!valid_policy) {
  ima_delete_rules();
  valid_policy = 1;
  clear_bit(IMA_FS_BUSY, &ima_fs_flags);
  return 0;
 }

 ima_update_policy();

 securityfs_remove(ima_policy);
 ima_policy = ((void*)0);





 return 0;
}

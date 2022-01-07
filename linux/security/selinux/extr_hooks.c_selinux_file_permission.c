
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct inode_security_struct {scalar_t__ sid; } ;
struct inode {int dummy; } ;
struct file_security_struct {scalar_t__ sid; scalar_t__ isid; scalar_t__ pseqno; } ;
struct file {int dummy; } ;


 scalar_t__ avc_policy_seqno (int *) ;
 scalar_t__ current_sid () ;
 struct inode* file_inode (struct file*) ;
 struct inode_security_struct* inode_security (struct inode*) ;
 struct file_security_struct* selinux_file (struct file*) ;
 int selinux_revalidate_file_permission (struct file*,int) ;
 int selinux_state ;

__attribute__((used)) static int selinux_file_permission(struct file *file, int mask)
{
 struct inode *inode = file_inode(file);
 struct file_security_struct *fsec = selinux_file(file);
 struct inode_security_struct *isec;
 u32 sid = current_sid();

 if (!mask)

  return 0;

 isec = inode_security(inode);
 if (sid == fsec->sid && fsec->isid == isec->sid &&
     fsec->pseqno == avc_policy_seqno(&selinux_state))

  return 0;

 return selinux_revalidate_file_permission(file, mask);
}

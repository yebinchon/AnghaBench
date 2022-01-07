
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_security_struct {int sid; } ;
struct file_security_struct {int pseqno; int isid; } ;
struct file {int f_cred; } ;


 int avc_policy_seqno (int *) ;
 int file_inode (struct file*) ;
 int file_path_has_perm (int ,struct file*,int ) ;
 struct inode_security_struct* inode_security (int ) ;
 int open_file_to_av (struct file*) ;
 struct file_security_struct* selinux_file (struct file*) ;
 int selinux_state ;

__attribute__((used)) static int selinux_file_open(struct file *file)
{
 struct file_security_struct *fsec;
 struct inode_security_struct *isec;

 fsec = selinux_file(file);
 isec = inode_security(file_inode(file));







 fsec->isid = isec->sid;
 fsec->pseqno = avc_policy_seqno(&selinux_state);
 return file_path_has_perm(file->f_cred, file, open_file_to_av(file));
}

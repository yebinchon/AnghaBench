
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_uid; } ;
typedef int kuid_t ;


 int CAP_FOWNER ;
 int capable_wrt_inode_uidgid (struct inode*,int ) ;
 int current_fsuid () ;
 scalar_t__ uid_eq (int ,int ) ;

int __check_sticky(struct inode *dir, struct inode *inode)
{
 kuid_t fsuid = current_fsuid();

 if (uid_eq(inode->i_uid, fsuid))
  return 0;
 if (uid_eq(dir->i_uid, fsuid))
  return 0;
 return !capable_wrt_inode_uidgid(inode, CAP_FOWNER);
}

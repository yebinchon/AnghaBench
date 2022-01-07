
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned int i_mode; int i_gid; int i_uid; } ;


 int EACCES ;
 int EAGAIN ;
 scalar_t__ IS_POSIXACL (struct inode*) ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 unsigned int S_IRWXG ;
 int check_acl (struct inode*,int) ;
 int current_fsuid () ;
 scalar_t__ in_group_p (int ) ;
 scalar_t__ likely (int ) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int acl_permission_check(struct inode *inode, int mask)
{
 unsigned int mode = inode->i_mode;

 if (likely(uid_eq(current_fsuid(), inode->i_uid)))
  mode >>= 6;
 else {
  if (IS_POSIXACL(inode) && (mode & S_IRWXG)) {
   int error = check_acl(inode, mask);
   if (error != -EAGAIN)
    return error;
  }

  if (in_group_p(inode->i_gid))
   mode >>= 3;
 }




 if ((mask & ~mode & (MAY_READ | MAY_WRITE | MAY_EXEC)) == 0)
  return 0;
 return -EACCES;
}

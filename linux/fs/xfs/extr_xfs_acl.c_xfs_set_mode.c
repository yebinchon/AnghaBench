
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ umode_t ;
struct inode {scalar_t__ i_mode; } ;
struct iattr {int ia_valid; int ia_ctime; scalar_t__ ia_mode; } ;


 int ATTR_CTIME ;
 int ATTR_MODE ;
 int XFS_ATTR_NOACL ;
 int XFS_I (struct inode*) ;
 int current_time (struct inode*) ;
 int xfs_setattr_nonsize (int ,struct iattr*,int ) ;

__attribute__((used)) static int
xfs_set_mode(struct inode *inode, umode_t mode)
{
 int error = 0;

 if (mode != inode->i_mode) {
  struct iattr iattr;

  iattr.ia_valid = ATTR_MODE | ATTR_CTIME;
  iattr.ia_mode = mode;
  iattr.ia_ctime = current_time(inode);

  error = xfs_setattr_nonsize(XFS_I(inode), &iattr, XFS_ATTR_NOACL);
 }

 return error;
}

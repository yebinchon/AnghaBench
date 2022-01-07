
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int F2FS_I_SB (struct inode*) ;
 int INLINE_DENTRY ;
 int S_ISDIR (int ) ;
 int test_opt (int ,int ) ;

bool f2fs_may_inline_dentry(struct inode *inode)
{
 if (!test_opt(F2FS_I_SB(inode), INLINE_DENTRY))
  return 0;

 if (!S_ISDIR(inode->i_mode))
  return 0;

 return 1;
}

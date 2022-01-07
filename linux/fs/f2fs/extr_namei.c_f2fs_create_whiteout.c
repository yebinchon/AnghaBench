
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EIO ;
 int F2FS_I_SB (struct inode*) ;
 int S_IFCHR ;
 int WHITEOUT_MODE ;
 int __f2fs_tmpfile (struct inode*,int *,int,struct inode**) ;
 int f2fs_cp_error (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int f2fs_create_whiteout(struct inode *dir, struct inode **whiteout)
{
 if (unlikely(f2fs_cp_error(F2FS_I_SB(dir))))
  return -EIO;

 return __f2fs_tmpfile(dir, ((void*)0), S_IFCHR | WHITEOUT_MODE, whiteout);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int i_mode; } ;


 int EROFS ;
 int MAY_WRITE ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sb_permission(struct super_block *sb, struct inode *inode, int mask)
{
 if (unlikely(mask & MAY_WRITE)) {
  umode_t mode = inode->i_mode;


  if (sb_rdonly(sb) && (S_ISREG(mode) || S_ISDIR(mode) || S_ISLNK(mode)))
   return -EROFS;
 }
 return 0;
}

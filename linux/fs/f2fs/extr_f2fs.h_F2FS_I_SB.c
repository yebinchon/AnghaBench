
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct f2fs_sb_info {int dummy; } ;


 struct f2fs_sb_info* F2FS_SB (int ) ;

__attribute__((used)) static inline struct f2fs_sb_info *F2FS_I_SB(struct inode *inode)
{
 return F2FS_SB(inode->i_sb);
}

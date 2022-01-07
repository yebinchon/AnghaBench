
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct dentry {int d_sb; } ;


 struct f2fs_sb_info* F2FS_SB (int ) ;
 int XATTR_USER ;
 int test_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static bool f2fs_xattr_user_list(struct dentry *dentry)
{
 struct f2fs_sb_info *sbi = F2FS_SB(dentry->d_sb);

 return test_opt(sbi, XATTR_USER);
}

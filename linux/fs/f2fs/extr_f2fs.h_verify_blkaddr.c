
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;


 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_err (struct f2fs_sb_info*,char*,int ,int) ;
 int f2fs_is_valid_blkaddr (struct f2fs_sb_info*,int ,int) ;

__attribute__((used)) static inline void verify_blkaddr(struct f2fs_sb_info *sbi,
     block_t blkaddr, int type)
{
 if (!f2fs_is_valid_blkaddr(sbi, blkaddr, type)) {
  f2fs_err(sbi, "invalid blkaddr: %u, type: %d, run fsck to fix.",
    blkaddr, type);
  f2fs_bug_on(sbi, 1);
 }
}

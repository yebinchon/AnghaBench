
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {scalar_t__ unusable_block_count; } ;
struct f2fs_attr {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ block_t ;


 int DISABLE_CHECKPOINT ;
 int PAGE_SIZE ;
 scalar_t__ f2fs_get_unusable_blocks (struct f2fs_sb_info*) ;
 int snprintf (char*,int ,char*,unsigned long long) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static ssize_t unusable_show(struct f2fs_attr *a,
  struct f2fs_sb_info *sbi, char *buf)
{
 block_t unusable;

 if (test_opt(sbi, DISABLE_CHECKPOINT))
  unusable = sbi->unusable_block_count;
 else
  unusable = f2fs_get_unusable_blocks(sbi);
 return snprintf(buf, PAGE_SIZE, "%llu\n",
  (unsigned long long)unusable);
}

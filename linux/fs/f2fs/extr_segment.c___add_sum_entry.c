
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {int next_blkoff; void* sum_blk; } ;


 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 int memcpy (void*,struct f2fs_summary*,int) ;

__attribute__((used)) static void __add_sum_entry(struct f2fs_sb_info *sbi, int type,
     struct f2fs_summary *sum)
{
 struct curseg_info *curseg = CURSEG_I(sbi, type);
 void *addr = curseg->sum_blk;
 addr += curseg->next_blkoff * sizeof(struct f2fs_summary);
 memcpy(addr, sum, sizeof(struct f2fs_summary));
}

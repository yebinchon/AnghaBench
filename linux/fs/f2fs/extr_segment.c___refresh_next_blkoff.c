
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct curseg_info {scalar_t__ alloc_type; scalar_t__ next_blkoff; } ;


 scalar_t__ SSR ;
 int __next_free_blkoff (struct f2fs_sb_info*,struct curseg_info*,scalar_t__) ;

__attribute__((used)) static void __refresh_next_blkoff(struct f2fs_sb_info *sbi,
    struct curseg_info *seg)
{
 if (seg->alloc_type == SSR)
  __next_free_blkoff(sbi, seg, seg->next_blkoff + 1);
 else
  seg->next_blkoff++;
}

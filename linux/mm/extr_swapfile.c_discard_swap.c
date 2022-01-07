
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int bdev; } ;
struct swap_extent {int start_block; scalar_t__ nr_pages; } ;
typedef int sector_t ;


 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int blkdev_issue_discard (int ,int,int,int ,int ) ;
 int cond_resched () ;
 struct swap_extent* first_se (struct swap_info_struct*) ;
 struct swap_extent* next_se (struct swap_extent*) ;

__attribute__((used)) static int discard_swap(struct swap_info_struct *si)
{
 struct swap_extent *se;
 sector_t start_block;
 sector_t nr_blocks;
 int err = 0;


 se = first_se(si);
 start_block = (se->start_block + 1) << (PAGE_SHIFT - 9);
 nr_blocks = ((sector_t)se->nr_pages - 1) << (PAGE_SHIFT - 9);
 if (nr_blocks) {
  err = blkdev_issue_discard(si->bdev, start_block,
    nr_blocks, GFP_KERNEL, 0);
  if (err)
   return err;
  cond_resched();
 }

 for (se = next_se(se); se; se = next_se(se)) {
  start_block = se->start_block << (PAGE_SHIFT - 9);
  nr_blocks = (sector_t)se->nr_pages << (PAGE_SHIFT - 9);

  err = blkdev_issue_discard(si->bdev, start_block,
    nr_blocks, GFP_KERNEL, 0);
  if (err)
   break;

  cond_resched();
 }
 return err;
}

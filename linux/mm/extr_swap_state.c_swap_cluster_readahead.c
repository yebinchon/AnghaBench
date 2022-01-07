
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int swp_entry_t ;
struct vm_fault {unsigned long address; struct vm_area_struct* vma; } ;
struct vm_area_struct {int dummy; } ;
struct swap_info_struct {int flags; unsigned long max; TYPE_2__* swap_file; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct blk_plug {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {struct inode* host; } ;


 int SWAP_RA ;
 int SWP_BLKDEV ;
 int SWP_FS ;
 int SetPageReadahead (struct page*) ;
 struct page* __read_swap_cache_async (int ,int ,struct vm_area_struct*,unsigned long,int*) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int count_vm_event (int ) ;
 scalar_t__ inode_read_congested (struct inode*) ;
 scalar_t__ likely (int) ;
 int lru_add_drain () ;
 int put_page (struct page*) ;
 struct page* read_swap_cache_async (int ,int ,struct vm_area_struct*,unsigned long,int) ;
 int swap_readpage (struct page*,int) ;
 int swapin_nr_pages (unsigned long) ;
 int swp_entry (int ,unsigned long) ;
 unsigned long swp_offset (int ) ;
 struct swap_info_struct* swp_swap_info (int ) ;
 int swp_type (int ) ;

struct page *swap_cluster_readahead(swp_entry_t entry, gfp_t gfp_mask,
    struct vm_fault *vmf)
{
 struct page *page;
 unsigned long entry_offset = swp_offset(entry);
 unsigned long offset = entry_offset;
 unsigned long start_offset, end_offset;
 unsigned long mask;
 struct swap_info_struct *si = swp_swap_info(entry);
 struct blk_plug plug;
 bool do_poll = 1, page_allocated;
 struct vm_area_struct *vma = vmf->vma;
 unsigned long addr = vmf->address;

 mask = swapin_nr_pages(offset) - 1;
 if (!mask)
  goto skip;


 if (likely(si->flags & (SWP_BLKDEV | SWP_FS))) {
  struct inode *inode = si->swap_file->f_mapping->host;
  if (inode_read_congested(inode))
   goto skip;
 }

 do_poll = 0;

 start_offset = offset & ~mask;
 end_offset = offset | mask;
 if (!start_offset)
  start_offset++;
 if (end_offset >= si->max)
  end_offset = si->max - 1;

 blk_start_plug(&plug);
 for (offset = start_offset; offset <= end_offset ; offset++) {

  page = __read_swap_cache_async(
   swp_entry(swp_type(entry), offset),
   gfp_mask, vma, addr, &page_allocated);
  if (!page)
   continue;
  if (page_allocated) {
   swap_readpage(page, 0);
   if (offset != entry_offset) {
    SetPageReadahead(page);
    count_vm_event(SWAP_RA);
   }
  }
  put_page(page);
 }
 blk_finish_plug(&plug);

 lru_add_drain();
skip:
 return read_swap_cache_async(entry, gfp_mask, vma, addr, do_poll);
}

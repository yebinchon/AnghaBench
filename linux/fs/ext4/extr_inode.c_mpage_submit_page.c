
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ index; } ;
struct mpage_da_data {scalar_t__ first_page; TYPE_1__* wbc; int io_submit; int inode; } ;
typedef int loff_t ;
struct TYPE_2__ {int nr_to_write; } ;


 int BUG_ON (int) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int clear_page_dirty_for_io (struct page*) ;
 int ext4_bio_write_page (int *,struct page*,int,TYPE_1__*,int) ;
 int ext4_verity_in_progress (int ) ;
 int i_size_read (int ) ;

__attribute__((used)) static int mpage_submit_page(struct mpage_da_data *mpd, struct page *page)
{
 int len;
 loff_t size;
 int err;

 BUG_ON(page->index != mpd->first_page);
 clear_page_dirty_for_io(page);
 size = i_size_read(mpd->inode);
 if (page->index == size >> PAGE_SHIFT &&
     !ext4_verity_in_progress(mpd->inode))
  len = size & ~PAGE_MASK;
 else
  len = PAGE_SIZE;
 err = ext4_bio_write_page(&mpd->io_submit, page, len, mpd->wbc, 0);
 if (!err)
  mpd->wbc->nr_to_write--;
 mpd->first_page++;

 return err;
}

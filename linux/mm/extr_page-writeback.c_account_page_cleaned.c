
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct address_space {int dummy; } ;


 int NR_FILE_DIRTY ;
 int NR_ZONE_WRITE_PENDING ;
 int PAGE_SIZE ;
 int WB_RECLAIMABLE ;
 int dec_lruvec_page_state (struct page*,int ) ;
 int dec_wb_stat (struct bdi_writeback*,int ) ;
 int dec_zone_page_state (struct page*,int ) ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 int task_io_account_cancelled_write (int ) ;

void account_page_cleaned(struct page *page, struct address_space *mapping,
     struct bdi_writeback *wb)
{
 if (mapping_cap_account_dirty(mapping)) {
  dec_lruvec_page_state(page, NR_FILE_DIRTY);
  dec_zone_page_state(page, NR_ZONE_WRITE_PENDING);
  dec_wb_stat(wb, WB_RECLAIMABLE);
  task_io_account_cancelled_write(PAGE_SIZE);
 }
}

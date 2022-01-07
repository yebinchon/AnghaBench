
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {int nr_dirtied; } ;


 int NR_DIRTIED ;
 int NR_FILE_DIRTY ;
 int NR_ZONE_WRITE_PENDING ;
 int PAGE_SIZE ;
 int WB_DIRTIED ;
 int WB_RECLAIMABLE ;
 int __inc_lruvec_page_state (struct page*,int ) ;
 int __inc_node_page_state (struct page*,int ) ;
 int __inc_zone_page_state (struct page*,int ) ;
 int bdp_ratelimits ;
 TYPE_1__* current ;
 int inc_wb_stat (struct bdi_writeback*,int ) ;
 int inode_attach_wb (struct inode*,struct page*) ;
 struct bdi_writeback* inode_to_wb (struct inode*) ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 int mem_cgroup_track_foreign_dirty (struct page*,struct bdi_writeback*) ;
 int task_io_account_write (int ) ;
 int this_cpu_inc (int ) ;
 int trace_writeback_dirty_page (struct page*,struct address_space*) ;

void account_page_dirtied(struct page *page, struct address_space *mapping)
{
 struct inode *inode = mapping->host;

 trace_writeback_dirty_page(page, mapping);

 if (mapping_cap_account_dirty(mapping)) {
  struct bdi_writeback *wb;

  inode_attach_wb(inode, page);
  wb = inode_to_wb(inode);

  __inc_lruvec_page_state(page, NR_FILE_DIRTY);
  __inc_zone_page_state(page, NR_ZONE_WRITE_PENDING);
  __inc_node_page_state(page, NR_DIRTIED);
  inc_wb_stat(wb, WB_RECLAIMABLE);
  inc_wb_stat(wb, WB_DIRTIED);
  task_io_account_write(PAGE_SIZE);
  current->nr_dirtied++;
  this_cpu_inc(bdp_ratelimits);

  mem_cgroup_track_foreign_dirty(page, wb);
 }
}

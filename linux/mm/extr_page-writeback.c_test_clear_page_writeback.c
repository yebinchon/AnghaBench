
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
struct lruvec {int dummy; } ;
struct inode {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct address_space {int i_pages; struct inode* host; } ;


 int NR_WRITEBACK ;
 int NR_WRITTEN ;
 int NR_ZONE_WRITE_PENDING ;
 int PAGECACHE_TAG_WRITEBACK ;
 int TestClearPageWriteback (struct page*) ;
 int WB_WRITEBACK ;
 int __unlock_page_memcg (struct mem_cgroup*) ;
 int __wb_writeout_inc (struct bdi_writeback*) ;
 int __xa_clear_mark (int *,int ,int ) ;
 scalar_t__ bdi_cap_account_writeback (struct backing_dev_info*) ;
 int dec_lruvec_state (struct lruvec*,int ) ;
 int dec_wb_stat (struct bdi_writeback*,int ) ;
 int dec_zone_page_state (struct page*,int ) ;
 int inc_node_page_state (struct page*,int ) ;
 struct backing_dev_info* inode_to_bdi (struct inode*) ;
 struct bdi_writeback* inode_to_wb (struct inode*) ;
 struct mem_cgroup* lock_page_memcg (struct page*) ;
 int mapping_tagged (struct address_space*,int ) ;
 scalar_t__ mapping_use_writeback_tags (struct address_space*) ;
 struct lruvec* mem_cgroup_page_lruvec (struct page*,int ) ;
 int page_index (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int page_pgdat (struct page*) ;
 int sb_clear_inode_writeback (struct inode*) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

int test_clear_page_writeback(struct page *page)
{
 struct address_space *mapping = page_mapping(page);
 struct mem_cgroup *memcg;
 struct lruvec *lruvec;
 int ret;

 memcg = lock_page_memcg(page);
 lruvec = mem_cgroup_page_lruvec(page, page_pgdat(page));
 if (mapping && mapping_use_writeback_tags(mapping)) {
  struct inode *inode = mapping->host;
  struct backing_dev_info *bdi = inode_to_bdi(inode);
  unsigned long flags;

  xa_lock_irqsave(&mapping->i_pages, flags);
  ret = TestClearPageWriteback(page);
  if (ret) {
   __xa_clear_mark(&mapping->i_pages, page_index(page),
      PAGECACHE_TAG_WRITEBACK);
   if (bdi_cap_account_writeback(bdi)) {
    struct bdi_writeback *wb = inode_to_wb(inode);

    dec_wb_stat(wb, WB_WRITEBACK);
    __wb_writeout_inc(wb);
   }
  }

  if (mapping->host && !mapping_tagged(mapping,
           PAGECACHE_TAG_WRITEBACK))
   sb_clear_inode_writeback(mapping->host);

  xa_unlock_irqrestore(&mapping->i_pages, flags);
 } else {
  ret = TestClearPageWriteback(page);
 }






 if (ret) {
  dec_lruvec_state(lruvec, NR_WRITEBACK);
  dec_zone_page_state(page, NR_ZONE_WRITE_PENDING);
  inc_node_page_state(page, NR_WRITTEN);
 }
 __unlock_page_memcg(memcg);
 return ret;
}

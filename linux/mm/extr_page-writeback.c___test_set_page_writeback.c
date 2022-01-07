
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct address_space {struct inode* host; int i_pages; } ;


 int NR_WRITEBACK ;
 int NR_ZONE_WRITE_PENDING ;
 int PAGECACHE_TAG_DIRTY ;
 int PAGECACHE_TAG_TOWRITE ;
 int PAGECACHE_TAG_WRITEBACK ;
 int PageDirty (struct page*) ;
 int TestSetPageWriteback (struct page*) ;
 int WB_WRITEBACK ;
 int XA_STATE (int ,int *,int ) ;
 scalar_t__ bdi_cap_account_writeback (struct backing_dev_info*) ;
 int inc_lruvec_page_state (struct page*,int ) ;
 int inc_wb_stat (int ,int ) ;
 int inc_zone_page_state (struct page*,int ) ;
 struct backing_dev_info* inode_to_bdi (struct inode*) ;
 int inode_to_wb (struct inode*) ;
 int lock_page_memcg (struct page*) ;
 int mapping_tagged (struct address_space*,int ) ;
 scalar_t__ mapping_use_writeback_tags (struct address_space*) ;
 int page_index (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int sb_mark_inode_writeback (struct inode*) ;
 int unlock_page_memcg (struct page*) ;
 int xas ;
 int xas_clear_mark (int *,int ) ;
 int xas_load (int *) ;
 int xas_lock_irqsave (int *,unsigned long) ;
 int xas_set_mark (int *,int ) ;
 int xas_unlock_irqrestore (int *,unsigned long) ;

int __test_set_page_writeback(struct page *page, bool keep_write)
{
 struct address_space *mapping = page_mapping(page);
 int ret;

 lock_page_memcg(page);
 if (mapping && mapping_use_writeback_tags(mapping)) {
  XA_STATE(xas, &mapping->i_pages, page_index(page));
  struct inode *inode = mapping->host;
  struct backing_dev_info *bdi = inode_to_bdi(inode);
  unsigned long flags;

  xas_lock_irqsave(&xas, flags);
  xas_load(&xas);
  ret = TestSetPageWriteback(page);
  if (!ret) {
   bool on_wblist;

   on_wblist = mapping_tagged(mapping,
         PAGECACHE_TAG_WRITEBACK);

   xas_set_mark(&xas, PAGECACHE_TAG_WRITEBACK);
   if (bdi_cap_account_writeback(bdi))
    inc_wb_stat(inode_to_wb(inode), WB_WRITEBACK);






   if (mapping->host && !on_wblist)
    sb_mark_inode_writeback(mapping->host);
  }
  if (!PageDirty(page))
   xas_clear_mark(&xas, PAGECACHE_TAG_DIRTY);
  if (!keep_write)
   xas_clear_mark(&xas, PAGECACHE_TAG_TOWRITE);
  xas_unlock_irqrestore(&xas, flags);
 } else {
  ret = TestSetPageWriteback(page);
 }
 if (!ret) {
  inc_lruvec_page_state(page, NR_WRITEBACK);
  inc_zone_page_state(page, NR_ZONE_WRITE_PENDING);
 }
 unlock_page_memcg(page);
 return ret;

}

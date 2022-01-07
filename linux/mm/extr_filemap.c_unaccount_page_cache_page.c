
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {int host; } ;
struct TYPE_2__ {int comm; } ;


 int CONFIG_DEBUG_VM ;
 int IS_ENABLED (int ) ;
 int LOCKDEP_NOW_UNRELIABLE ;
 int NR_FILE_PAGES ;
 int NR_FILE_THPS ;
 int NR_SHMEM ;
 int NR_SHMEM_THPS ;
 int PageDirty (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ PageMappedToDisk (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 int PageTail (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int TAINT_BAD_PAGE ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int __dec_node_page_state (struct page*,int ) ;
 int __mod_node_page_state (int ,int ,int) ;
 int account_page_cleaned (struct page*,struct address_space*,int ) ;
 int add_taint (int ,int ) ;
 int cleancache_invalidate_page (struct address_space*,struct page*) ;
 int cleancache_put_page (struct page*) ;
 TYPE_1__* current ;
 int dump_page (struct page*,char*) ;
 int dump_stack () ;
 int filemap_nr_thps_dec (struct address_space*) ;
 int hpage_nr_pages (struct page*) ;
 int inode_to_wb (int ) ;
 scalar_t__ mapping_exiting (struct address_space*) ;
 int page_count (struct page*) ;
 int page_mapcount (struct page*) ;
 int page_mapcount_reset (struct page*) ;
 int page_mapped (struct page*) ;
 int page_pgdat (struct page*) ;
 int page_ref_sub (struct page*,int) ;
 int page_to_pfn (struct page*) ;
 int pr_alert (char*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void unaccount_page_cache_page(struct address_space *mapping,
          struct page *page)
{
 int nr;






 if (PageUptodate(page) && PageMappedToDisk(page))
  cleancache_put_page(page);
 else
  cleancache_invalidate_page(mapping, page);

 VM_BUG_ON_PAGE(PageTail(page), page);
 VM_BUG_ON_PAGE(page_mapped(page), page);
 if (!IS_ENABLED(CONFIG_DEBUG_VM) && unlikely(page_mapped(page))) {
  int mapcount;

  pr_alert("BUG: Bad page cache in process %s  pfn:%05lx\n",
    current->comm, page_to_pfn(page));
  dump_page(page, "still mapped when deleted");
  dump_stack();
  add_taint(TAINT_BAD_PAGE, LOCKDEP_NOW_UNRELIABLE);

  mapcount = page_mapcount(page);
  if (mapping_exiting(mapping) &&
      page_count(page) >= mapcount + 2) {






   page_mapcount_reset(page);
   page_ref_sub(page, mapcount);
  }
 }


 if (PageHuge(page))
  return;

 nr = hpage_nr_pages(page);

 __mod_node_page_state(page_pgdat(page), NR_FILE_PAGES, -nr);
 if (PageSwapBacked(page)) {
  __mod_node_page_state(page_pgdat(page), NR_SHMEM, -nr);
  if (PageTransHuge(page))
   __dec_node_page_state(page, NR_SHMEM_THPS);
 } else if (PageTransHuge(page)) {
  __dec_node_page_state(page, NR_FILE_THPS);
  filemap_nr_thps_dec(mapping);
 }
 if (WARN_ON_ONCE(PageDirty(page)))
  account_page_cleaned(page, mapping, inode_to_wb(mapping->host));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef enum ttu_flags { ____Placeholder_ttu_flags } ttu_flags ;


 int LIST_HEAD (int ) ;
 int MF_ACTION_REQUIRED ;
 int MF_MUST_KILL ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ PageKsm (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageMlocked (struct page*) ;
 scalar_t__ PageReserved (struct page*) ;
 scalar_t__ PageSlab (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int SetPageDirty (struct page*) ;
 int TTU_IGNORE_ACCESS ;
 int TTU_IGNORE_HWPOISON ;
 int TTU_IGNORE_MLOCK ;
 int collect_procs (struct page*,int *,int) ;
 int kill_procs (int *,int,int,unsigned long,int) ;
 scalar_t__ mapping_cap_writeback_dirty (struct address_space*) ;
 int page_mapcount (struct page*) ;
 int page_mapped (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 scalar_t__ page_mkclean (struct page*) ;
 int pr_err (char*,unsigned long,...) ;
 int pr_info (char*,unsigned long) ;
 int shake_page (struct page*,int ) ;
 int tokill ;
 int try_to_unmap (struct page*,int) ;

__attribute__((used)) static bool hwpoison_user_mappings(struct page *p, unsigned long pfn,
      int flags, struct page **hpagep)
{
 enum ttu_flags ttu = TTU_IGNORE_MLOCK | TTU_IGNORE_ACCESS;
 struct address_space *mapping;
 LIST_HEAD(tokill);
 bool unmap_success;
 int kill = 1, forcekill;
 struct page *hpage = *hpagep;
 bool mlocked = PageMlocked(hpage);





 if (PageReserved(p) || PageSlab(p))
  return 1;
 if (!(PageLRU(hpage) || PageHuge(p)))
  return 1;





 if (!page_mapped(hpage))
  return 1;

 if (PageKsm(p)) {
  pr_err("Memory failure: %#lx: can't handle KSM pages.\n", pfn);
  return 0;
 }

 if (PageSwapCache(p)) {
  pr_err("Memory failure: %#lx: keeping poisoned page in swap cache\n",
   pfn);
  ttu |= TTU_IGNORE_HWPOISON;
 }







 mapping = page_mapping(hpage);
 if (!(flags & MF_MUST_KILL) && !PageDirty(hpage) && mapping &&
     mapping_cap_writeback_dirty(mapping)) {
  if (page_mkclean(hpage)) {
   SetPageDirty(hpage);
  } else {
   kill = 0;
   ttu |= TTU_IGNORE_HWPOISON;
   pr_info("Memory failure: %#lx: corrupted page was clean: dropped without side effects\n",
    pfn);
  }
 }
 if (kill)
  collect_procs(hpage, &tokill, flags & MF_ACTION_REQUIRED);

 unmap_success = try_to_unmap(hpage, ttu);
 if (!unmap_success)
  pr_err("Memory failure: %#lx: failed to unmap page (mapcount=%d)\n",
         pfn, page_mapcount(hpage));





 if (mlocked)
  shake_page(hpage, 0);
 forcekill = PageDirty(hpage) || (flags & MF_MUST_KILL);
 kill_procs(&tokill, forcekill, !unmap_success, pfn, flags);

 return unmap_success;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int flags; } ;


 int KPF_ACTIVE ;
 int KPF_ANON ;
 int KPF_ARCH ;
 int KPF_BUDDY ;
 int KPF_COMPOUND_HEAD ;
 int KPF_COMPOUND_TAIL ;
 int KPF_DIRTY ;
 int KPF_ERROR ;
 int KPF_HUGE ;
 int KPF_HWPOISON ;
 int KPF_IDLE ;
 int KPF_KSM ;
 int KPF_LOCKED ;
 int KPF_LRU ;
 int KPF_MAPPEDTODISK ;
 int KPF_MLOCKED ;
 int KPF_MMAP ;
 int KPF_NOPAGE ;
 int KPF_OFFLINE ;
 int KPF_OWNER_PRIVATE ;
 int KPF_PGTABLE ;
 int KPF_PRIVATE ;
 int KPF_PRIVATE_2 ;
 int KPF_RECLAIM ;
 int KPF_REFERENCED ;
 int KPF_RESERVED ;
 int KPF_SLAB ;
 int KPF_SWAPBACKED ;
 int KPF_SWAPCACHE ;
 int KPF_THP ;
 int KPF_UNCACHED ;
 int KPF_UNEVICTABLE ;
 int KPF_UPTODATE ;
 int KPF_WRITEBACK ;
 int KPF_ZERO_PAGE ;
 int PG_active ;
 int PG_arch_1 ;
 int PG_dirty ;
 int PG_error ;
 int PG_hwpoison ;
 int PG_locked ;
 int PG_lru ;
 int PG_mappedtodisk ;
 int PG_mlocked ;
 int PG_owner_priv_1 ;
 int PG_private ;
 int PG_private_2 ;
 int PG_reclaim ;
 int PG_referenced ;
 int PG_reserved ;
 int PG_slab ;
 int PG_swapbacked ;
 int PG_uncached ;
 int PG_unevictable ;
 int PG_uptodate ;
 int PG_writeback ;
 scalar_t__ PageAnon (struct page*) ;
 scalar_t__ PageBuddy (struct page*) ;
 scalar_t__ PageHead (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ PageKsm (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 scalar_t__ PageOffline (struct page*) ;
 scalar_t__ PageSlab (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ PageTable (struct page*) ;
 scalar_t__ PageTail (struct page*) ;
 scalar_t__ PageTransCompound (struct page*) ;
 struct page* compound_head (struct page*) ;
 scalar_t__ is_free_buddy_page (struct page*) ;
 scalar_t__ is_huge_zero_page (struct page*) ;
 scalar_t__ is_zero_pfn (int ) ;
 int kpf_copy_bit (int,int,int ) ;
 scalar_t__ page_count (struct page*) ;
 scalar_t__ page_is_idle (struct page*) ;
 scalar_t__ page_mapped (struct page*) ;
 int page_to_pfn (struct page*) ;

u64 stable_page_flags(struct page *page)
{
 u64 k;
 u64 u;





 if (!page)
  return 1 << KPF_NOPAGE;

 k = page->flags;
 u = 0;







 if (!PageSlab(page) && page_mapped(page))
  u |= 1 << KPF_MMAP;
 if (PageAnon(page))
  u |= 1 << KPF_ANON;
 if (PageKsm(page))
  u |= 1 << KPF_KSM;





 if (PageHead(page))
  u |= 1 << KPF_COMPOUND_HEAD;
 if (PageTail(page))
  u |= 1 << KPF_COMPOUND_TAIL;
 if (PageHuge(page))
  u |= 1 << KPF_HUGE;






 else if (PageTransCompound(page)) {
  struct page *head = compound_head(page);

  if (PageLRU(head) || PageAnon(head))
   u |= 1 << KPF_THP;
  else if (is_huge_zero_page(head)) {
   u |= 1 << KPF_ZERO_PAGE;
   u |= 1 << KPF_THP;
  }
 } else if (is_zero_pfn(page_to_pfn(page)))
  u |= 1 << KPF_ZERO_PAGE;







 if (PageBuddy(page))
  u |= 1 << KPF_BUDDY;
 else if (page_count(page) == 0 && is_free_buddy_page(page))
  u |= 1 << KPF_BUDDY;

 if (PageOffline(page))
  u |= 1 << KPF_OFFLINE;
 if (PageTable(page))
  u |= 1 << KPF_PGTABLE;

 if (page_is_idle(page))
  u |= 1 << KPF_IDLE;

 u |= kpf_copy_bit(k, KPF_LOCKED, PG_locked);

 u |= kpf_copy_bit(k, KPF_SLAB, PG_slab);
 if (PageTail(page) && PageSlab(compound_head(page)))
  u |= 1 << KPF_SLAB;

 u |= kpf_copy_bit(k, KPF_ERROR, PG_error);
 u |= kpf_copy_bit(k, KPF_DIRTY, PG_dirty);
 u |= kpf_copy_bit(k, KPF_UPTODATE, PG_uptodate);
 u |= kpf_copy_bit(k, KPF_WRITEBACK, PG_writeback);

 u |= kpf_copy_bit(k, KPF_LRU, PG_lru);
 u |= kpf_copy_bit(k, KPF_REFERENCED, PG_referenced);
 u |= kpf_copy_bit(k, KPF_ACTIVE, PG_active);
 u |= kpf_copy_bit(k, KPF_RECLAIM, PG_reclaim);

 if (PageSwapCache(page))
  u |= 1 << KPF_SWAPCACHE;
 u |= kpf_copy_bit(k, KPF_SWAPBACKED, PG_swapbacked);

 u |= kpf_copy_bit(k, KPF_UNEVICTABLE, PG_unevictable);
 u |= kpf_copy_bit(k, KPF_MLOCKED, PG_mlocked);
 u |= kpf_copy_bit(k, KPF_RESERVED, PG_reserved);
 u |= kpf_copy_bit(k, KPF_MAPPEDTODISK, PG_mappedtodisk);
 u |= kpf_copy_bit(k, KPF_PRIVATE, PG_private);
 u |= kpf_copy_bit(k, KPF_PRIVATE_2, PG_private_2);
 u |= kpf_copy_bit(k, KPF_OWNER_PRIVATE, PG_owner_priv_1);
 u |= kpf_copy_bit(k, KPF_ARCH, PG_arch_1);

 return u;
}

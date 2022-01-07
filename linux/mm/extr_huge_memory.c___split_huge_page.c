
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int val; } ;
typedef TYPE_2__ swp_entry_t ;
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct lruvec {int dummy; } ;
struct list_head {int dummy; } ;
struct address_space {int i_pages; } ;
typedef scalar_t__ pgoff_t ;
struct TYPE_10__ {int lru_lock; } ;
typedef TYPE_3__ pg_data_t ;
struct TYPE_8__ {int i_pages; int host; } ;


 int CONFIG_SHMEM ;
 int ClearPageCompound (struct page*) ;
 int ClearPageDirty (struct page*) ;
 int HPAGE_PMD_NR ;
 int HPAGE_PMD_ORDER ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ PageAnon (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int __delete_from_page_cache (struct page*,int *) ;
 int __split_huge_page_tail (struct page*,int,struct lruvec*,struct list_head*) ;
 int __xa_store (int *,unsigned long,struct page*,int ) ;
 struct page* compound_head (struct page*) ;
 struct lruvec* mem_cgroup_page_lruvec (struct page*,TYPE_3__*) ;
 int mem_cgroup_split_huge_fixup (struct page*) ;
 TYPE_3__* page_pgdat (struct page*) ;
 int page_private (struct page*) ;
 int page_ref_add (struct page*,int) ;
 int page_ref_inc (struct page*) ;
 int put_page (struct page*) ;
 int remap_page (struct page*) ;
 int shmem_uncharge (int ,int) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int split_page_owner (struct page*,int ) ;
 struct address_space* swap_address_space (TYPE_2__) ;
 unsigned long swp_offset (TYPE_2__) ;
 int unlock_page (struct page*) ;
 int xa_lock (int *) ;
 int xa_unlock (int *) ;

__attribute__((used)) static void __split_huge_page(struct page *page, struct list_head *list,
  pgoff_t end, unsigned long flags)
{
 struct page *head = compound_head(page);
 pg_data_t *pgdat = page_pgdat(head);
 struct lruvec *lruvec;
 struct address_space *swap_cache = ((void*)0);
 unsigned long offset = 0;
 int i;

 lruvec = mem_cgroup_page_lruvec(head, pgdat);


 mem_cgroup_split_huge_fixup(head);

 if (PageAnon(head) && PageSwapCache(head)) {
  swp_entry_t entry = { .val = page_private(head) };

  offset = swp_offset(entry);
  swap_cache = swap_address_space(entry);
  xa_lock(&swap_cache->i_pages);
 }

 for (i = HPAGE_PMD_NR - 1; i >= 1; i--) {
  __split_huge_page_tail(head, i, lruvec, list);

  if (head[i].index >= end) {
   ClearPageDirty(head + i);
   __delete_from_page_cache(head + i, ((void*)0));
   if (IS_ENABLED(CONFIG_SHMEM) && PageSwapBacked(head))
    shmem_uncharge(head->mapping->host, 1);
   put_page(head + i);
  } else if (!PageAnon(page)) {
   __xa_store(&head->mapping->i_pages, head[i].index,
     head + i, 0);
  } else if (swap_cache) {
   __xa_store(&swap_cache->i_pages, offset + i,
     head + i, 0);
  }
 }

 ClearPageCompound(head);

 split_page_owner(head, HPAGE_PMD_ORDER);


 if (PageAnon(head)) {

  if (PageSwapCache(head)) {
   page_ref_add(head, 2);
   xa_unlock(&swap_cache->i_pages);
  } else {
   page_ref_inc(head);
  }
 } else {

  page_ref_add(head, 2);
  xa_unlock(&head->mapping->i_pages);
 }

 spin_unlock_irqrestore(&pgdat->lru_lock, flags);

 remap_page(head);

 for (i = 0; i < HPAGE_PMD_NR; i++) {
  struct page *subpage = head + i;
  if (subpage == page)
   continue;
  unlock_page(subpage);
  put_page(subpage);
 }
}

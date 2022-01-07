
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct pglist_data {int lru_lock; } ;
struct page {struct address_space* mapping; } ;
struct list_head {int dummy; } ;
struct deferred_split {int split_queue_lock; int split_queue_len; } ;
struct anon_vma {int dummy; } ;
struct address_space {int i_pages; int host; } ;
typedef int pgoff_t ;


 int BUG () ;
 int CONFIG_DEBUG_VM ;
 int DIV_ROUND_UP (int ,int ) ;
 int EBUSY ;
 scalar_t__ IS_ENABLED (int ) ;
 struct pglist_data* NODE_DATA (int ) ;
 int NR_FILE_THPS ;
 int NR_SHMEM_THPS ;
 int PAGE_SIZE ;
 scalar_t__ PageAnon (struct page*) ;
 int PageCompound (struct page*) ;
 int PageLocked (struct page*) ;
 int PageMlocked (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ PageTail (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int THP_SPLIT_PAGE ;
 int THP_SPLIT_PAGE_FAILED ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int XA_STATE (int ,int *,int ) ;
 int __dec_node_page_state (struct page*,int ) ;
 int __split_huge_page (struct page*,struct list_head*,int,unsigned long) ;
 int anon_vma_lock_write (struct anon_vma*) ;
 int anon_vma_unlock_write (struct anon_vma*) ;
 int can_split_huge_page (struct page*,int*) ;
 struct page* compound_head (struct page*) ;
 int compound_mapcount (struct page*) ;
 int count_vm_event (int ) ;
 int dump_page (struct page*,char*) ;
 struct deferred_split* get_deferred_split_queue (struct page*) ;
 int i_mmap_lock_read (struct address_space*) ;
 int i_mmap_unlock_read (struct address_space*) ;
 int i_size_read (int ) ;
 int is_huge_zero_page (struct page*) ;
 int list_del (int ) ;
 int list_empty (int ) ;
 int lru_add_drain () ;
 int page_count (struct page*) ;
 int page_deferred_list (struct page*) ;
 struct anon_vma* page_get_anon_vma (struct page*) ;
 int page_index (struct page*) ;
 int page_private (struct page*) ;
 scalar_t__ page_ref_freeze (struct page*,int) ;
 int page_to_nid (struct page*) ;
 int pr_alert (char*,int,int) ;
 int put_anon_vma (struct anon_vma*) ;
 int remap_page (struct page*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int split_swap_cluster (TYPE_1__) ;
 int total_mapcount (struct page*) ;
 int unmap_page (struct page*) ;
 int xa_lock (int *) ;
 int xa_unlock (int *) ;
 int xas ;
 struct page* xas_load (int *) ;

int split_huge_page_to_list(struct page *page, struct list_head *list)
{
 struct page *head = compound_head(page);
 struct pglist_data *pgdata = NODE_DATA(page_to_nid(head));
 struct deferred_split *ds_queue = get_deferred_split_queue(page);
 struct anon_vma *anon_vma = ((void*)0);
 struct address_space *mapping = ((void*)0);
 int count, mapcount, extra_pins, ret;
 bool mlocked;
 unsigned long flags;
 pgoff_t end;

 VM_BUG_ON_PAGE(is_huge_zero_page(page), page);
 VM_BUG_ON_PAGE(!PageLocked(page), page);
 VM_BUG_ON_PAGE(!PageCompound(page), page);

 if (PageWriteback(page))
  return -EBUSY;

 if (PageAnon(head)) {
  anon_vma = page_get_anon_vma(head);
  if (!anon_vma) {
   ret = -EBUSY;
   goto out;
  }
  end = -1;
  mapping = ((void*)0);
  anon_vma_lock_write(anon_vma);
 } else {
  mapping = head->mapping;


  if (!mapping) {
   ret = -EBUSY;
   goto out;
  }

  anon_vma = ((void*)0);
  i_mmap_lock_read(mapping);
  end = DIV_ROUND_UP(i_size_read(mapping->host), PAGE_SIZE);
 }





 if (!can_split_huge_page(head, &extra_pins)) {
  ret = -EBUSY;
  goto out_unlock;
 }

 mlocked = PageMlocked(page);
 unmap_page(head);
 VM_BUG_ON_PAGE(compound_mapcount(head), head);


 if (mlocked)
  lru_add_drain();


 spin_lock_irqsave(&pgdata->lru_lock, flags);

 if (mapping) {
  XA_STATE(xas, &mapping->i_pages, page_index(head));





  xa_lock(&mapping->i_pages);
  if (xas_load(&xas) != head)
   goto fail;
 }


 spin_lock(&ds_queue->split_queue_lock);
 count = page_count(head);
 mapcount = total_mapcount(head);
 if (!mapcount && page_ref_freeze(head, 1 + extra_pins)) {
  if (!list_empty(page_deferred_list(head))) {
   ds_queue->split_queue_len--;
   list_del(page_deferred_list(head));
  }
  if (mapping) {
   if (PageSwapBacked(page))
    __dec_node_page_state(page, NR_SHMEM_THPS);
   else
    __dec_node_page_state(page, NR_FILE_THPS);
  }

  spin_unlock(&ds_queue->split_queue_lock);
  __split_huge_page(page, list, end, flags);
  if (PageSwapCache(head)) {
   swp_entry_t entry = { .val = page_private(head) };

   ret = split_swap_cluster(entry);
  } else
   ret = 0;
 } else {
  if (IS_ENABLED(CONFIG_DEBUG_VM) && mapcount) {
   pr_alert("total_mapcount: %u, page_count(): %u\n",
     mapcount, count);
   if (PageTail(page))
    dump_page(head, ((void*)0));
   dump_page(page, "total_mapcount(head) > 0");
   BUG();
  }
  spin_unlock(&ds_queue->split_queue_lock);
fail: if (mapping)
   xa_unlock(&mapping->i_pages);
  spin_unlock_irqrestore(&pgdata->lru_lock, flags);
  remap_page(head);
  ret = -EBUSY;
 }

out_unlock:
 if (anon_vma) {
  anon_vma_unlock_write(anon_vma);
  put_anon_vma(anon_vma);
 }
 if (mapping)
  i_mmap_unlock_read(mapping);
out:
 count_vm_event(!ret ? THP_SPLIT_PAGE : THP_SPLIT_PAGE_FAILED);
 return ret;
}

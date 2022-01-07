
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_fault {unsigned long address; int * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int dummy; } ;
struct swap_info_struct {unsigned char* swap_map; } ;
struct page {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 int ENOMEM ;
 int FRONTSWAP_PAGES_UNUSED ;
 int GFP_HIGHUSER_MOVABLE ;
 scalar_t__ PAGE_SIZE ;
 unsigned char volatile SWAP_MAP_BAD ;
 int frontswap_test (struct swap_info_struct*,unsigned long) ;
 int is_swap_pte (int ) ;
 int lock_page (struct page*) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_to_swp_entry (int ) ;
 int pte_unmap (int *) ;
 int put_page (struct page*) ;
 struct swap_info_struct** swap_info ;
 struct page* swapin_readahead (int ,int ,struct vm_fault*) ;
 unsigned long swp_offset (int ) ;
 unsigned int swp_type (int ) ;
 int try_to_free_swap (struct page*) ;
 int unlock_page (struct page*) ;
 int unuse_pte (struct vm_area_struct*,int *,unsigned long,int ,struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int unuse_pte_range(struct vm_area_struct *vma, pmd_t *pmd,
   unsigned long addr, unsigned long end,
   unsigned int type, bool frontswap,
   unsigned long *fs_pages_to_unuse)
{
 struct page *page;
 swp_entry_t entry;
 pte_t *pte;
 struct swap_info_struct *si;
 unsigned long offset;
 int ret = 0;
 volatile unsigned char *swap_map;

 si = swap_info[type];
 pte = pte_offset_map(pmd, addr);
 do {
  struct vm_fault vmf;

  if (!is_swap_pte(*pte))
   continue;

  entry = pte_to_swp_entry(*pte);
  if (swp_type(entry) != type)
   continue;

  offset = swp_offset(entry);
  if (frontswap && !frontswap_test(si, offset))
   continue;

  pte_unmap(pte);
  swap_map = &si->swap_map[offset];
  vmf.vma = vma;
  vmf.address = addr;
  vmf.pmd = pmd;
  page = swapin_readahead(entry, GFP_HIGHUSER_MOVABLE, &vmf);
  if (!page) {
   if (*swap_map == 0 || *swap_map == SWAP_MAP_BAD)
    goto try_next;
   return -ENOMEM;
  }

  lock_page(page);
  wait_on_page_writeback(page);
  ret = unuse_pte(vma, pmd, addr, entry, page);
  if (ret < 0) {
   unlock_page(page);
   put_page(page);
   goto out;
  }

  try_to_free_swap(page);
  unlock_page(page);
  put_page(page);

  if (*fs_pages_to_unuse && !--(*fs_pages_to_unuse)) {
   ret = FRONTSWAP_PAGES_UNUSED;
   goto out;
  }
try_next:
  pte = pte_offset_map(pmd, addr);
 } while (pte++, addr += PAGE_SIZE, addr != end);
 pte_unmap(pte - 1);

 ret = 0;
out:
 return ret;
}

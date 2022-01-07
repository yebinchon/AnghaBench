
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;


 int get_page_unless_zero (struct page*) ;
 int is_migration_entry (int ) ;
 int is_swap_pte (int ) ;
 struct page* migration_entry_to_page (int ) ;
 int pte_to_swp_entry (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int put_and_wait_on_page_locked (struct page*) ;
 int spin_lock (int *) ;

void __migration_entry_wait(struct mm_struct *mm, pte_t *ptep,
    spinlock_t *ptl)
{
 pte_t pte;
 swp_entry_t entry;
 struct page *page;

 spin_lock(ptl);
 pte = *ptep;
 if (!is_swap_pte(pte))
  goto out;

 entry = pte_to_swp_entry(pte);
 if (!is_migration_entry(entry))
  goto out;

 page = migration_entry_to_page(entry);






 if (!get_page_unless_zero(page))
  goto out;
 pte_unmap_unlock(ptep, ptl);
 put_and_wait_on_page_locked(page);
 return;
out:
 pte_unmap_unlock(ptep, ptl);
}

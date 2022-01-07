
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {unsigned long xa_index; scalar_t__ xa_node; } ;
struct address_space {int nrexceptional; } ;


 unsigned long DAX_EMPTY ;
 unsigned long DAX_PMD ;
 int EIO ;
 int ENOMEM ;
 int PG_PMD_COLOUR ;
 int PG_PMD_NR ;
 int VM_FAULT_FALLBACK ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 scalar_t__ XA_ERROR (int ) ;
 int __GFP_HIGHMEM ;
 int dax_disassociate_entry (void*,struct address_space*,int) ;
 scalar_t__ dax_is_conflict (void*) ;
 scalar_t__ dax_is_empty_entry (void*) ;
 scalar_t__ dax_is_pmd_entry (void*) ;
 scalar_t__ dax_is_zero_entry (void*) ;
 int dax_lock_entry (struct xa_state*,void*) ;
 void* dax_make_entry (int ,unsigned long) ;
 int dax_wake_entry (struct xa_state*,void*,int) ;
 void* get_unlocked_entry (struct xa_state*,unsigned int) ;
 int mapping_gfp_mask (struct address_space*) ;
 int pfn_to_pfn_t (int ) ;
 int unmap_mapping_pages (struct address_space*,int,int ,int) ;
 int xa_is_value (void*) ;
 void* xa_mk_internal (int ) ;
 scalar_t__ xas_error (struct xa_state*) ;
 int xas_lock_irq (struct xa_state*) ;
 scalar_t__ xas_nomem (struct xa_state*,int) ;
 int xas_reset (struct xa_state*) ;
 int xas_set (struct xa_state*,unsigned long) ;
 int xas_set_err (struct xa_state*,int ) ;
 int xas_store (struct xa_state*,int *) ;
 int xas_unlock_irq (struct xa_state*) ;

__attribute__((used)) static void *grab_mapping_entry(struct xa_state *xas,
  struct address_space *mapping, unsigned int order)
{
 unsigned long index = xas->xa_index;
 bool pmd_downgrade = 0;
 void *entry;

retry:
 xas_lock_irq(xas);
 entry = get_unlocked_entry(xas, order);

 if (entry) {
  if (dax_is_conflict(entry))
   goto fallback;
  if (!xa_is_value(entry)) {
   xas_set_err(xas, EIO);
   goto out_unlock;
  }

  if (order == 0) {
   if (dax_is_pmd_entry(entry) &&
       (dax_is_zero_entry(entry) ||
        dax_is_empty_entry(entry))) {
    pmd_downgrade = 1;
   }
  }
 }

 if (pmd_downgrade) {




  dax_lock_entry(xas, entry);






  if (dax_is_zero_entry(entry)) {
   xas_unlock_irq(xas);
   unmap_mapping_pages(mapping,
     xas->xa_index & ~PG_PMD_COLOUR,
     PG_PMD_NR, 0);
   xas_reset(xas);
   xas_lock_irq(xas);
  }

  dax_disassociate_entry(entry, mapping, 0);
  xas_store(xas, ((void*)0));
  dax_wake_entry(xas, entry, 1);
  mapping->nrexceptional--;
  entry = ((void*)0);
  xas_set(xas, index);
 }

 if (entry) {
  dax_lock_entry(xas, entry);
 } else {
  unsigned long flags = DAX_EMPTY;

  if (order > 0)
   flags |= DAX_PMD;
  entry = dax_make_entry(pfn_to_pfn_t(0), flags);
  dax_lock_entry(xas, entry);
  if (xas_error(xas))
   goto out_unlock;
  mapping->nrexceptional++;
 }

out_unlock:
 xas_unlock_irq(xas);
 if (xas_nomem(xas, mapping_gfp_mask(mapping) & ~__GFP_HIGHMEM))
  goto retry;
 if (xas->xa_node == XA_ERROR(-ENOMEM))
  return xa_mk_internal(VM_FAULT_OOM);
 if (xas_error(xas))
  return xa_mk_internal(VM_FAULT_SIGBUS);
 return entry;
fallback:
 xas_unlock_irq(xas);
 return xa_mk_internal(VM_FAULT_FALLBACK);
}

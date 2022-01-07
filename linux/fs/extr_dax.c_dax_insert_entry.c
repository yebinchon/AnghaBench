
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {unsigned long xa_index; } ;
struct vm_fault {int address; int vma; } ;
struct address_space {int host; } ;
typedef int pfn_t ;


 int DAX_LOCKED ;
 unsigned long DAX_ZERO_PAGE ;
 int I_DIRTY_PAGES ;
 int PAGECACHE_TAG_DIRTY ;
 unsigned long PG_PMD_COLOUR ;
 int PG_PMD_NR ;
 int WARN_ON_ONCE (int) ;
 int __mark_inode_dirty (int ,int ) ;
 int dax_associate_entry (void*,struct address_space*,int ,int ) ;
 int dax_disassociate_entry (void*,struct address_space*,int) ;
 scalar_t__ dax_is_empty_entry (void*) ;
 scalar_t__ dax_is_pmd_entry (void*) ;
 scalar_t__ dax_is_zero_entry (void*) ;
 void* dax_lock_entry (struct xa_state*,void*) ;
 void* dax_make_entry (int ,unsigned long) ;
 int unmap_mapping_pages (struct address_space*,unsigned long,int,int) ;
 void* xa_mk_value (int) ;
 int xa_to_value (void*) ;
 int xas_load (struct xa_state*) ;
 int xas_lock_irq (struct xa_state*) ;
 int xas_reset (struct xa_state*) ;
 int xas_set_mark (struct xa_state*,int ) ;
 int xas_unlock_irq (struct xa_state*) ;

__attribute__((used)) static void *dax_insert_entry(struct xa_state *xas,
  struct address_space *mapping, struct vm_fault *vmf,
  void *entry, pfn_t pfn, unsigned long flags, bool dirty)
{
 void *new_entry = dax_make_entry(pfn, flags);

 if (dirty)
  __mark_inode_dirty(mapping->host, I_DIRTY_PAGES);

 if (dax_is_zero_entry(entry) && !(flags & DAX_ZERO_PAGE)) {
  unsigned long index = xas->xa_index;

  if (dax_is_pmd_entry(entry))
   unmap_mapping_pages(mapping, index & ~PG_PMD_COLOUR,
     PG_PMD_NR, 0);
  else
   unmap_mapping_pages(mapping, index, 1, 0);
 }

 xas_reset(xas);
 xas_lock_irq(xas);
 if (dax_is_zero_entry(entry) || dax_is_empty_entry(entry)) {
  void *old;

  dax_disassociate_entry(entry, mapping, 0);
  dax_associate_entry(new_entry, mapping, vmf->vma, vmf->address);
  old = dax_lock_entry(xas, new_entry);
  WARN_ON_ONCE(old != xa_mk_value(xa_to_value(entry) |
     DAX_LOCKED));
  entry = new_entry;
 } else {
  xas_load(xas);
 }

 if (dirty)
  xas_set_mark(xas, PAGECACHE_TAG_DIRTY);

 xas_unlock_irq(xas);
 return entry;
}

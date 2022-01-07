
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int flags; int nr_pages; int * pages; int addr; } ;


 scalar_t__ PAGE_SIZE ;
 unsigned long ULONG_MAX ;
 int VM_FLUSH_RESET_PERMS ;
 int _vm_unmap_aliases (unsigned long,unsigned long,int) ;
 unsigned long max (scalar_t__,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 scalar_t__ page_address (int ) ;
 int remove_vm_area (int ) ;
 int set_area_direct_map (struct vm_struct*,int ) ;
 int set_direct_map_default_noflush ;
 int set_direct_map_invalid_noflush ;
 int vm_unmap_aliases () ;

__attribute__((used)) static void vm_remove_mappings(struct vm_struct *area, int deallocate_pages)
{
 unsigned long start = ULONG_MAX, end = 0;
 int flush_reset = area->flags & VM_FLUSH_RESET_PERMS;
 int flush_dmap = 0;
 int i;

 remove_vm_area(area->addr);


 if (!flush_reset)
  return;





 if (!deallocate_pages) {
  vm_unmap_aliases();
  return;
 }






 for (i = 0; i < area->nr_pages; i++) {
  unsigned long addr = (unsigned long)page_address(area->pages[i]);
  if (addr) {
   start = min(addr, start);
   end = max(addr + PAGE_SIZE, end);
   flush_dmap = 1;
  }
 }






 set_area_direct_map(area, set_direct_map_invalid_noflush);
 _vm_unmap_aliases(start, end, flush_dmap);
 set_area_direct_map(area, set_direct_map_default_noflush);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int va_end; int va_start; } ;


 scalar_t__ debug_pagealloc_enabled () ;
 int flush_cache_vunmap (int ,int ) ;
 int flush_tlb_kernel_range (int ,int ) ;
 int free_vmap_area_noflush (struct vmap_area*) ;
 int unmap_vmap_area (struct vmap_area*) ;

__attribute__((used)) static void free_unmap_vmap_area(struct vmap_area *va)
{
 flush_cache_vunmap(va->va_start, va->va_end);
 unmap_vmap_area(va);
 if (debug_pagealloc_enabled())
  flush_tlb_kernel_range(va->va_start, va->va_end);

 free_vmap_area_noflush(va);
}

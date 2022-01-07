
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {void* addr; unsigned int nr_pages; int size; struct page** pages; int caller; } ;
struct page {int dummy; } ;
typedef int pgprot_t ;
typedef int gfp_t ;


 int GFP_DMA ;
 int GFP_DMA32 ;
 int GFP_RECLAIM_MASK ;
 int NUMA_NO_NODE ;
 int PAGE_KERNEL ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int __GFP_HIGHMEM ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 int __vfree (void*) ;
 struct page** __vmalloc_node (unsigned int,int,int const,int ,int,int ) ;
 struct page* alloc_page (int const) ;
 struct page* alloc_pages_node (int,int const,int ) ;
 int atomic_long_add (unsigned int,int *) ;
 int cond_resched () ;
 unsigned int get_vm_area_size (struct vm_struct*) ;
 scalar_t__ gfpflags_allow_blocking (int) ;
 int kfree (struct vm_struct*) ;
 struct page** kmalloc_node (unsigned int,int const,int) ;
 scalar_t__ map_vm_area (struct vm_struct*,int ,struct page**) ;
 int nr_vmalloc_pages ;
 int remove_vm_area (void*) ;
 scalar_t__ unlikely (int) ;
 int warn_alloc (int,int *,char*,unsigned int,int ) ;

__attribute__((used)) static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
     pgprot_t prot, int node)
{
 struct page **pages;
 unsigned int nr_pages, array_size, i;
 const gfp_t nested_gfp = (gfp_mask & GFP_RECLAIM_MASK) | __GFP_ZERO;
 const gfp_t alloc_mask = gfp_mask | __GFP_NOWARN;
 const gfp_t highmem_mask = (gfp_mask & (GFP_DMA | GFP_DMA32)) ?
     0 :
     __GFP_HIGHMEM;

 nr_pages = get_vm_area_size(area) >> PAGE_SHIFT;
 array_size = (nr_pages * sizeof(struct page *));


 if (array_size > PAGE_SIZE) {
  pages = __vmalloc_node(array_size, 1, nested_gfp|highmem_mask,
    PAGE_KERNEL, node, area->caller);
 } else {
  pages = kmalloc_node(array_size, nested_gfp, node);
 }

 if (!pages) {
  remove_vm_area(area->addr);
  kfree(area);
  return ((void*)0);
 }

 area->pages = pages;
 area->nr_pages = nr_pages;

 for (i = 0; i < area->nr_pages; i++) {
  struct page *page;

  if (node == NUMA_NO_NODE)
   page = alloc_page(alloc_mask|highmem_mask);
  else
   page = alloc_pages_node(node, alloc_mask|highmem_mask, 0);

  if (unlikely(!page)) {

   area->nr_pages = i;
   atomic_long_add(area->nr_pages, &nr_vmalloc_pages);
   goto fail;
  }
  area->pages[i] = page;
  if (gfpflags_allow_blocking(gfp_mask|highmem_mask))
   cond_resched();
 }
 atomic_long_add(area->nr_pages, &nr_vmalloc_pages);

 if (map_vm_area(area, prot, pages))
  goto fail;
 return area->addr;

fail:
 warn_alloc(gfp_mask, ((void*)0),
     "vmalloc: allocation failure, allocated %ld of %ld bytes",
     (area->nr_pages*PAGE_SIZE), area->size);
 __vfree(area->addr);
 return ((void*)0);
}

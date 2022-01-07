
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_KERNEL ;
 int __GFP_ZERO ;
 struct page* alloc_pages_node (int,int,int ) ;
 int cpu_to_node (int) ;
 void* page_address (struct page*) ;

__attribute__((used)) static void *perf_mmap_alloc_page(int cpu)
{
 struct page *page;
 int node;

 node = (cpu == -1) ? cpu : cpu_to_node(cpu);
 page = alloc_pages_node(node, GFP_KERNEL | __GFP_ZERO, 0);
 if (!page)
  return ((void*)0);

 return page_address(page);
}

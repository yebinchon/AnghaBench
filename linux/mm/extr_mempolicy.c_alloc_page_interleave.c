
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int NUMA_INTERLEAVE_HIT ;
 struct page* __alloc_pages (int ,unsigned int,unsigned int) ;
 int __inc_numa_state (int ,int ) ;
 unsigned int page_to_nid (struct page*) ;
 int page_zone (struct page*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int static_branch_likely (int *) ;
 int vm_numa_stat_key ;

__attribute__((used)) static struct page *alloc_page_interleave(gfp_t gfp, unsigned order,
     unsigned nid)
{
 struct page *page;

 page = __alloc_pages(gfp, order, nid);

 if (!static_branch_likely(&vm_numa_stat_key))
  return page;
 if (page && page_to_nid(page) == nid) {
  preempt_disable();
  __inc_numa_state(page_zone(page), NUMA_INTERLEAVE_HIT);
  preempt_enable();
 }
 return page;
}

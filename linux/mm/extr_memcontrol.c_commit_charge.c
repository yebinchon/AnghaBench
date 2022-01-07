
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup {int dummy; } ;


 int VM_BUG_ON_PAGE (struct mem_cgroup*,struct page*) ;
 int lock_page_lru (struct page*,int*) ;
 int unlock_page_lru (struct page*,int) ;

__attribute__((used)) static void commit_charge(struct page *page, struct mem_cgroup *memcg,
     bool lrucare)
{
 int isolated;

 VM_BUG_ON_PAGE(page->mem_cgroup, page);





 if (lrucare)
  lock_page_lru(page, &isolated);
 page->mem_cgroup = memcg;

 if (lrucare)
  unlock_page_lru(page, isolated);
}

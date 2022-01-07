
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uncharge_gather {int dummy; } ;
struct page {int mem_cgroup; } ;


 scalar_t__ mem_cgroup_disabled () ;
 int uncharge_batch (struct uncharge_gather*) ;
 int uncharge_gather_clear (struct uncharge_gather*) ;
 int uncharge_page (struct page*,struct uncharge_gather*) ;

void mem_cgroup_uncharge(struct page *page)
{
 struct uncharge_gather ug;

 if (mem_cgroup_disabled())
  return;


 if (!page->mem_cgroup)
  return;

 uncharge_gather_clear(&ug);
 uncharge_page(page, &ug);
 uncharge_batch(&ug);
}

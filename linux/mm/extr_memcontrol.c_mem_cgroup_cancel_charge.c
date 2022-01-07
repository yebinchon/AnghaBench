
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;


 int cancel_charge (struct mem_cgroup*,unsigned int) ;
 int hpage_nr_pages (struct page*) ;
 scalar_t__ mem_cgroup_disabled () ;

void mem_cgroup_cancel_charge(struct page *page, struct mem_cgroup *memcg,
  bool compound)
{
 unsigned int nr_pages = compound ? hpage_nr_pages(page) : 1;

 if (mem_cgroup_disabled())
  return;





 if (!memcg)
  return;

 cancel_charge(memcg, nr_pages);
}

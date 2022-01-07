
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct mem_cgroup {TYPE_1__* vmstats_percpu; } ;
struct TYPE_2__ {int nr_page_events; } ;


 int MEMCG_CACHE ;
 int MEMCG_RSS ;
 int MEMCG_RSS_HUGE ;
 int NR_SHMEM ;
 int PGPGIN ;
 int PGPGOUT ;
 scalar_t__ PageAnon (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 int PageTransHuge (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __count_memcg_events (struct mem_cgroup*,int ,int) ;
 int __mod_memcg_state (struct mem_cgroup*,int ,int) ;
 int __this_cpu_add (int ,int) ;

__attribute__((used)) static void mem_cgroup_charge_statistics(struct mem_cgroup *memcg,
      struct page *page,
      bool compound, int nr_pages)
{




 if (PageAnon(page))
  __mod_memcg_state(memcg, MEMCG_RSS, nr_pages);
 else {
  __mod_memcg_state(memcg, MEMCG_CACHE, nr_pages);
  if (PageSwapBacked(page))
   __mod_memcg_state(memcg, NR_SHMEM, nr_pages);
 }

 if (compound) {
  VM_BUG_ON_PAGE(!PageTransHuge(page), page);
  __mod_memcg_state(memcg, MEMCG_RSS_HUGE, nr_pages);
 }


 if (nr_pages > 0)
  __count_memcg_events(memcg, PGPGIN, 1);
 else {
  __count_memcg_events(memcg, PGPGOUT, 1);
  nr_pages = -nr_pages;
 }

 __this_cpu_add(memcg->vmstats_percpu->nr_page_events, nr_pages);
}

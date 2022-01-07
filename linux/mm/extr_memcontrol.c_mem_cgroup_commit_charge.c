
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int mapping; } ;
struct mem_cgroup {int dummy; } ;


 scalar_t__ PageLRU (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int commit_charge (struct page*,struct mem_cgroup*,int) ;
 scalar_t__ do_memsw_account () ;
 int hpage_nr_pages (struct page*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int mem_cgroup_charge_statistics (struct mem_cgroup*,struct page*,int,unsigned int) ;
 scalar_t__ mem_cgroup_disabled () ;
 int mem_cgroup_uncharge_swap (TYPE_1__,unsigned int) ;
 int memcg_check_events (struct mem_cgroup*,struct page*) ;
 int page_private (struct page*) ;

void mem_cgroup_commit_charge(struct page *page, struct mem_cgroup *memcg,
         bool lrucare, bool compound)
{
 unsigned int nr_pages = compound ? hpage_nr_pages(page) : 1;

 VM_BUG_ON_PAGE(!page->mapping, page);
 VM_BUG_ON_PAGE(PageLRU(page) && !lrucare, page);

 if (mem_cgroup_disabled())
  return;





 if (!memcg)
  return;

 commit_charge(page, memcg, lrucare);

 local_irq_disable();
 mem_cgroup_charge_statistics(memcg, page, compound, nr_pages);
 memcg_check_events(memcg, page);
 local_irq_enable();

 if (do_memsw_account() && PageSwapCache(page)) {
  swp_entry_t entry = { .val = page_private(page) };





  mem_cgroup_uncharge_swap(entry, nr_pages);
 }
}

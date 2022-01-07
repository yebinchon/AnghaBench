
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup {int css; int memsw; int memory; } ;


 scalar_t__ PageAnon (struct page*) ;
 int PageLocked (struct page*) ;
 int PageTransHuge (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int commit_charge (struct page*,struct mem_cgroup*,int) ;
 int css_get_many (int *,unsigned int) ;
 scalar_t__ do_memsw_account () ;
 int hpage_nr_pages (struct page*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mem_cgroup_charge_statistics (struct mem_cgroup*,struct page*,int,unsigned int) ;
 scalar_t__ mem_cgroup_disabled () ;
 int memcg_check_events (struct mem_cgroup*,struct page*) ;
 int page_counter_charge (int *,unsigned int) ;

void mem_cgroup_migrate(struct page *oldpage, struct page *newpage)
{
 struct mem_cgroup *memcg;
 unsigned int nr_pages;
 bool compound;
 unsigned long flags;

 VM_BUG_ON_PAGE(!PageLocked(oldpage), oldpage);
 VM_BUG_ON_PAGE(!PageLocked(newpage), newpage);
 VM_BUG_ON_PAGE(PageAnon(oldpage) != PageAnon(newpage), newpage);
 VM_BUG_ON_PAGE(PageTransHuge(oldpage) != PageTransHuge(newpage),
         newpage);

 if (mem_cgroup_disabled())
  return;


 if (newpage->mem_cgroup)
  return;


 memcg = oldpage->mem_cgroup;
 if (!memcg)
  return;


 compound = PageTransHuge(newpage);
 nr_pages = compound ? hpage_nr_pages(newpage) : 1;

 page_counter_charge(&memcg->memory, nr_pages);
 if (do_memsw_account())
  page_counter_charge(&memcg->memsw, nr_pages);
 css_get_many(&memcg->css, nr_pages);

 commit_charge(newpage, memcg, 0);

 local_irq_save(flags);
 mem_cgroup_charge_statistics(memcg, newpage, compound, nr_pages);
 memcg_check_events(memcg, newpage);
 local_irq_restore(flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mem_cgroup {int css; } ;
typedef int gfp_t ;
struct TYPE_5__ {scalar_t__ mem_cgroup; } ;


 int PageLocked (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 TYPE_3__* compound_head (struct page*) ;
 int css_put (int *) ;
 int css_tryget_online (int *) ;
 scalar_t__ do_swap_account ;
 struct mem_cgroup* get_mem_cgroup_from_mm (struct mm_struct*) ;
 int hpage_nr_pages (struct page*) ;
 unsigned short lookup_swap_cgroup_id (TYPE_1__) ;
 scalar_t__ mem_cgroup_disabled () ;
 struct mem_cgroup* mem_cgroup_from_id (unsigned short) ;
 int page_private (struct page*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int try_charge (struct mem_cgroup*,int ,unsigned int) ;

int mem_cgroup_try_charge(struct page *page, struct mm_struct *mm,
     gfp_t gfp_mask, struct mem_cgroup **memcgp,
     bool compound)
{
 struct mem_cgroup *memcg = ((void*)0);
 unsigned int nr_pages = compound ? hpage_nr_pages(page) : 1;
 int ret = 0;

 if (mem_cgroup_disabled())
  goto out;

 if (PageSwapCache(page)) {







  VM_BUG_ON_PAGE(!PageLocked(page), page);
  if (compound_head(page)->mem_cgroup)
   goto out;

  if (do_swap_account) {
   swp_entry_t ent = { .val = page_private(page), };
   unsigned short id = lookup_swap_cgroup_id(ent);

   rcu_read_lock();
   memcg = mem_cgroup_from_id(id);
   if (memcg && !css_tryget_online(&memcg->css))
    memcg = ((void*)0);
   rcu_read_unlock();
  }
 }

 if (!memcg)
  memcg = get_mem_cgroup_from_mm(mm);

 ret = try_charge(memcg, gfp_mask, nr_pages);

 css_put(&memcg->css);
out:
 *memcgp = memcg;
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {int dummy; } ;
struct hugetlb_cgroup {int css; int * hugepage; } ;


 int ENOMEM ;
 scalar_t__ HUGETLB_CGROUP_MIN_ORDER ;
 int css_put (int *) ;
 int css_tryget_online (int *) ;
 int current ;
 int * hstates ;
 scalar_t__ huge_page_order (int *) ;
 scalar_t__ hugetlb_cgroup_disabled () ;
 struct hugetlb_cgroup* hugetlb_cgroup_from_task (int ) ;
 int page_counter_try_charge (int *,unsigned long,struct page_counter**) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int hugetlb_cgroup_charge_cgroup(int idx, unsigned long nr_pages,
     struct hugetlb_cgroup **ptr)
{
 int ret = 0;
 struct page_counter *counter;
 struct hugetlb_cgroup *h_cg = ((void*)0);

 if (hugetlb_cgroup_disabled())
  goto done;




 if (huge_page_order(&hstates[idx]) < HUGETLB_CGROUP_MIN_ORDER)
  goto done;
again:
 rcu_read_lock();
 h_cg = hugetlb_cgroup_from_task(current);
 if (!css_tryget_online(&h_cg->css)) {
  rcu_read_unlock();
  goto again;
 }
 rcu_read_unlock();

 if (!page_counter_try_charge(&h_cg->hugepage[idx], nr_pages, &counter))
  ret = -ENOMEM;
 css_put(&h_cg->css);
done:
 *ptr = h_cg;
 return ret;
}

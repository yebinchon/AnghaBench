
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {int dummy; } ;
struct page {int dummy; } ;
struct hugetlb_cgroup {struct page_counter* hugepage; } ;


 unsigned int compound_nr (struct page*) ;
 struct hugetlb_cgroup* hugetlb_cgroup_from_page (struct page*) ;
 int page_counter_cancel (struct page_counter*,unsigned int) ;
 int page_counter_charge (struct page_counter*,unsigned int) ;
 struct hugetlb_cgroup* parent_hugetlb_cgroup (struct hugetlb_cgroup*) ;
 struct hugetlb_cgroup* root_h_cgroup ;
 int set_hugetlb_cgroup (struct page*,struct hugetlb_cgroup*) ;

__attribute__((used)) static void hugetlb_cgroup_move_parent(int idx, struct hugetlb_cgroup *h_cg,
           struct page *page)
{
 unsigned int nr_pages;
 struct page_counter *counter;
 struct hugetlb_cgroup *page_hcg;
 struct hugetlb_cgroup *parent = parent_hugetlb_cgroup(h_cg);

 page_hcg = hugetlb_cgroup_from_page(page);





 if (!page_hcg || page_hcg != h_cg)
  goto out;

 nr_pages = compound_nr(page);
 if (!parent) {
  parent = root_h_cgroup;

  page_counter_charge(&parent->hugepage[idx], nr_pages);
 }
 counter = &h_cg->hugepage[idx];

 page_counter_cancel(counter, nr_pages);

 set_hugetlb_cgroup(page, parent);
out:
 return;
}

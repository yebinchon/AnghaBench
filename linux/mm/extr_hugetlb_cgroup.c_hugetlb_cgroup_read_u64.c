
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page_counter {int failcnt; int watermark; int max; } ;
struct hugetlb_cgroup {struct page_counter* hugepage; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int private; } ;


 int BUG () ;
 int MEMFILE_ATTR (int ) ;
 size_t MEMFILE_IDX (int ) ;
 int PAGE_SIZE ;




 struct hugetlb_cgroup* hugetlb_cgroup_from_css (struct cgroup_subsys_state*) ;
 int page_counter_read (struct page_counter*) ;

__attribute__((used)) static u64 hugetlb_cgroup_read_u64(struct cgroup_subsys_state *css,
       struct cftype *cft)
{
 struct page_counter *counter;
 struct hugetlb_cgroup *h_cg = hugetlb_cgroup_from_css(css);

 counter = &h_cg->hugepage[MEMFILE_IDX(cft->private)];

 switch (MEMFILE_ATTR(cft->private)) {
 case 128:
  return (u64)page_counter_read(counter) * PAGE_SIZE;
 case 130:
  return (u64)counter->max * PAGE_SIZE;
 case 129:
  return (u64)counter->watermark * PAGE_SIZE;
 case 131:
  return counter->failcnt;
 default:
  BUG();
 }
}

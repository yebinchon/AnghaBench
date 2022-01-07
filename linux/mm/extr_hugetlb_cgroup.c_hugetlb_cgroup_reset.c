
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page_counter {int failcnt; } ;
struct kernfs_open_file {int dummy; } ;
struct hugetlb_cgroup {struct page_counter* hugepage; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int private; } ;


 int EINVAL ;
 int MEMFILE_ATTR (int ) ;
 size_t MEMFILE_IDX (int ) ;


 struct hugetlb_cgroup* hugetlb_cgroup_from_css (int ) ;
 TYPE_1__* of_cft (struct kernfs_open_file*) ;
 int of_css (struct kernfs_open_file*) ;
 int page_counter_reset_watermark (struct page_counter*) ;

__attribute__((used)) static ssize_t hugetlb_cgroup_reset(struct kernfs_open_file *of,
        char *buf, size_t nbytes, loff_t off)
{
 int ret = 0;
 struct page_counter *counter;
 struct hugetlb_cgroup *h_cg = hugetlb_cgroup_from_css(of_css(of));

 counter = &h_cg->hugepage[MEMFILE_IDX(of_cft(of)->private)];

 switch (MEMFILE_ATTR(of_cft(of)->private)) {
 case 128:
  page_counter_reset_watermark(counter);
  break;
 case 129:
  counter->failcnt = 0;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret ?: nbytes;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int gfp_t ;


 int mem_cgroup_throttle_swaprate (struct mem_cgroup*,int ,int ) ;
 int mem_cgroup_try_charge (struct page*,struct mm_struct*,int ,struct mem_cgroup**,int) ;
 int page_to_nid (struct page*) ;

int mem_cgroup_try_charge_delay(struct page *page, struct mm_struct *mm,
     gfp_t gfp_mask, struct mem_cgroup **memcgp,
     bool compound)
{
 struct mem_cgroup *memcg;
 int ret;

 ret = mem_cgroup_try_charge(page, mm, gfp_mask, memcgp, compound);
 memcg = *memcgp;
 mem_cgroup_throttle_swaprate(memcg, page_to_nid(page), gfp_mask);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruvec {struct pglist_data* pgdat; } ;
struct pglist_data {struct lruvec lruvec; } ;
struct page {struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup_per_node {struct lruvec lruvec; } ;
struct mem_cgroup {int dummy; } ;


 scalar_t__ mem_cgroup_disabled () ;
 struct mem_cgroup_per_node* mem_cgroup_page_nodeinfo (struct mem_cgroup*,struct page*) ;
 struct mem_cgroup* root_mem_cgroup ;
 scalar_t__ unlikely (int) ;

struct lruvec *mem_cgroup_page_lruvec(struct page *page, struct pglist_data *pgdat)
{
 struct mem_cgroup_per_node *mz;
 struct mem_cgroup *memcg;
 struct lruvec *lruvec;

 if (mem_cgroup_disabled()) {
  lruvec = &pgdat->lruvec;
  goto out;
 }

 memcg = page->mem_cgroup;




 if (!memcg)
  memcg = root_mem_cgroup;

 mz = mem_cgroup_page_nodeinfo(memcg, page);
 lruvec = &mz->lruvec;
out:





 if (unlikely(lruvec->pgdat != pgdat))
  lruvec->pgdat = pgdat;
 return lruvec;
}

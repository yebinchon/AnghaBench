
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mem_cgroup_per_node {int dummy; } ;
struct mem_cgroup {struct mem_cgroup_per_node** nodeinfo; } ;


 int page_to_nid (struct page*) ;

__attribute__((used)) static struct mem_cgroup_per_node *
mem_cgroup_page_nodeinfo(struct mem_cgroup *memcg, struct page *page)
{
 int nid = page_to_nid(page);

 return memcg->nodeinfo[nid];
}

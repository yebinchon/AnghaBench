
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_per_node {int memcg; } ;
struct mem_cgroup {int dummy; } ;


 struct mem_cgroup_per_node* mem_cgroup_nodeinfo (struct mem_cgroup*,int) ;
 struct mem_cgroup* parent_mem_cgroup (int ) ;

__attribute__((used)) static struct mem_cgroup_per_node *
parent_nodeinfo(struct mem_cgroup_per_node *pn, int nid)
{
 struct mem_cgroup *parent;

 parent = parent_mem_cgroup(pn->memcg);
 if (!parent)
  return ((void*)0);
 return mem_cgroup_nodeinfo(parent, nid);
}

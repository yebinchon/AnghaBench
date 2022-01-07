
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;
struct lruvec {unsigned long refaults; } ;
typedef int pg_data_t ;


 int WORKINGSET_ACTIVATE ;
 unsigned long lruvec_page_state_local (struct lruvec*,int ) ;
 struct mem_cgroup* mem_cgroup_iter (struct mem_cgroup*,struct mem_cgroup*,int *) ;
 struct lruvec* mem_cgroup_lruvec (int *,struct mem_cgroup*) ;

__attribute__((used)) static void snapshot_refaults(struct mem_cgroup *root_memcg, pg_data_t *pgdat)
{
 struct mem_cgroup *memcg;

 memcg = mem_cgroup_iter(root_memcg, ((void*)0), ((void*)0));
 do {
  unsigned long refaults;
  struct lruvec *lruvec;

  lruvec = mem_cgroup_lruvec(pgdat, memcg);
  refaults = lruvec_page_state_local(lruvec, WORKINGSET_ACTIVATE);
  lruvec->refaults = refaults;
 } while ((memcg = mem_cgroup_iter(root_memcg, memcg, ((void*)0))));
}

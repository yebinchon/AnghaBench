
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scan_control {int dummy; } ;
struct pglist_data {int dummy; } ;
struct mem_cgroup {int dummy; } ;
struct lruvec {int dummy; } ;


 int LRU_ACTIVE_ANON ;
 int SWAP_CLUSTER_MAX ;
 scalar_t__ inactive_list_is_low (struct lruvec*,int,struct scan_control*,int) ;
 struct mem_cgroup* mem_cgroup_iter (int *,struct mem_cgroup*,int *) ;
 struct lruvec* mem_cgroup_lruvec (struct pglist_data*,struct mem_cgroup*) ;
 int shrink_active_list (int ,struct lruvec*,struct scan_control*,int ) ;
 int total_swap_pages ;

__attribute__((used)) static void age_active_anon(struct pglist_data *pgdat,
    struct scan_control *sc)
{
 struct mem_cgroup *memcg;

 if (!total_swap_pages)
  return;

 memcg = mem_cgroup_iter(((void*)0), ((void*)0), ((void*)0));
 do {
  struct lruvec *lruvec = mem_cgroup_lruvec(pgdat, memcg);

  if (inactive_list_is_low(lruvec, 0, sc, 1))
   shrink_active_list(SWAP_CLUSTER_MAX, lruvec,
        sc, LRU_ACTIVE_ANON);

  memcg = mem_cgroup_iter(((void*)0), memcg, ((void*)0));
 } while (memcg);
}

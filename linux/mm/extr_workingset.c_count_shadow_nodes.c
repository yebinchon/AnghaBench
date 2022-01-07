
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int nid; scalar_t__ memcg; } ;
struct lruvec {int dummy; } ;


 int NODE_DATA (int ) ;
 scalar_t__ NR_LRU_BASE ;
 int NR_LRU_LISTS ;
 scalar_t__ NR_SLAB_RECLAIMABLE ;
 scalar_t__ NR_SLAB_UNRECLAIMABLE ;
 unsigned long SHRINK_EMPTY ;
 int XA_CHUNK_SHIFT ;
 unsigned long list_lru_shrink_count (int *,struct shrink_control*) ;
 scalar_t__ lruvec_page_state_local (struct lruvec*,scalar_t__) ;
 struct lruvec* mem_cgroup_lruvec (int ,scalar_t__) ;
 unsigned long node_present_pages (int ) ;
 int shadow_nodes ;

__attribute__((used)) static unsigned long count_shadow_nodes(struct shrinker *shrinker,
     struct shrink_control *sc)
{
 unsigned long max_nodes;
 unsigned long nodes;
 unsigned long pages;

 nodes = list_lru_shrink_count(&shadow_nodes, sc);
  pages = node_present_pages(sc->nid);

 max_nodes = pages >> (XA_CHUNK_SHIFT - 3);

 if (!nodes)
  return SHRINK_EMPTY;

 if (nodes <= max_nodes)
  return 0;
 return nodes - max_nodes;
}

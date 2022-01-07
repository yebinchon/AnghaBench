
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int dummy; } ;
struct rcu_cblist {int dummy; } ;


 int rcu_cblist_init (struct rcu_cblist*) ;
 int rcu_segcblist_extract_count (struct rcu_segcblist*,struct rcu_cblist*) ;
 int rcu_segcblist_extract_done_cbs (struct rcu_segcblist*,struct rcu_cblist*) ;
 int rcu_segcblist_extract_pend_cbs (struct rcu_segcblist*,struct rcu_cblist*) ;
 int rcu_segcblist_init (struct rcu_segcblist*) ;
 int rcu_segcblist_insert_count (struct rcu_segcblist*,struct rcu_cblist*) ;
 int rcu_segcblist_insert_done_cbs (struct rcu_segcblist*,struct rcu_cblist*) ;
 int rcu_segcblist_insert_pend_cbs (struct rcu_segcblist*,struct rcu_cblist*) ;

void rcu_segcblist_merge(struct rcu_segcblist *dst_rsclp,
    struct rcu_segcblist *src_rsclp)
{
 struct rcu_cblist donecbs;
 struct rcu_cblist pendcbs;

 rcu_cblist_init(&donecbs);
 rcu_cblist_init(&pendcbs);
 rcu_segcblist_extract_count(src_rsclp, &donecbs);
 rcu_segcblist_extract_done_cbs(src_rsclp, &donecbs);
 rcu_segcblist_extract_pend_cbs(src_rsclp, &pendcbs);
 rcu_segcblist_insert_count(dst_rsclp, &donecbs);
 rcu_segcblist_insert_done_cbs(dst_rsclp, &donecbs);
 rcu_segcblist_insert_pend_cbs(dst_rsclp, &pendcbs);
 rcu_segcblist_init(src_rsclp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int len_lazy; } ;
struct rcu_cblist {scalar_t__ len; scalar_t__ len_lazy; } ;


 int rcu_segcblist_add_len (struct rcu_segcblist*,scalar_t__) ;

void rcu_segcblist_insert_count(struct rcu_segcblist *rsclp,
    struct rcu_cblist *rclp)
{
 rsclp->len_lazy += rclp->len_lazy;
 rcu_segcblist_add_len(rsclp, rclp->len);
 rclp->len_lazy = 0;
 rclp->len = 0;
}

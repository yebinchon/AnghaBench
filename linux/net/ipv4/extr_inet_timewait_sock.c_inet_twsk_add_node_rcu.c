
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_timewait_sock {int tw_node; } ;
struct hlist_nulls_head {int dummy; } ;


 int hlist_nulls_add_head_rcu (int *,struct hlist_nulls_head*) ;

__attribute__((used)) static void inet_twsk_add_node_rcu(struct inet_timewait_sock *tw,
       struct hlist_nulls_head *list)
{
 hlist_nulls_add_head_rcu(&tw->tw_node, list);
}

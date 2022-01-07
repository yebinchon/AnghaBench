
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table_instance {size_t node_ver; } ;
struct TYPE_2__ {int * node; int hash; } ;
struct sw_flow {TYPE_1__ ufid_table; } ;
struct hlist_head {int dummy; } ;


 struct hlist_head* find_bucket (struct table_instance*,int ) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;

__attribute__((used)) static void ufid_table_instance_insert(struct table_instance *ti,
           struct sw_flow *flow)
{
 struct hlist_head *head;

 head = find_bucket(ti, flow->ufid_table.hash);
 hlist_add_head_rcu(&flow->ufid_table.node[ti->node_ver], head);
}

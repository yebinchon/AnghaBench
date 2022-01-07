
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct dp_meter {int dp_hash_node; int id; } ;
struct datapath {int dummy; } ;


 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 struct hlist_head* meter_hash_bucket (struct datapath*,int ) ;

__attribute__((used)) static void attach_meter(struct datapath *dp, struct dp_meter *meter)
{
 struct hlist_head *head = meter_hash_bucket(dp, meter->id);

 hlist_add_head_rcu(&meter->dp_hash_node, head);
}

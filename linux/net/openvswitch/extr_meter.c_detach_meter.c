
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dp_meter {int dp_hash_node; } ;


 int ASSERT_OVSL () ;
 int hlist_del_rcu (int *) ;

__attribute__((used)) static void detach_meter(struct dp_meter *meter)
{
 ASSERT_OVSL();
 if (meter)
  hlist_del_rcu(&meter->dp_hash_node);
}

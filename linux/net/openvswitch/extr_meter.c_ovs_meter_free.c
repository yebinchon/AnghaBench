
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dp_meter {int dummy; } ;


 int kfree_rcu (struct dp_meter*,int ) ;
 int rcu ;

__attribute__((used)) static void ovs_meter_free(struct dp_meter *meter)
{
 if (!meter)
  return;

 kfree_rcu(meter, rcu);
}

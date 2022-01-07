
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_subscription {int kref; } ;


 int kref_put (int *,int ) ;
 int tipc_sub_kref_release ;

void tipc_sub_put(struct tipc_subscription *subscription)
{
 kref_put(&subscription->kref, tipc_sub_kref_release);
}

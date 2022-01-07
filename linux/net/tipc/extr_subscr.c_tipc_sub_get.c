
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_subscription {int kref; } ;


 int kref_get (int *) ;

void tipc_sub_get(struct tipc_subscription *subscription)
{
 kref_get(&subscription->kref);
}

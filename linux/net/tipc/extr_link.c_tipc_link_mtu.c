
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int mtu; } ;



int tipc_link_mtu(struct tipc_link *l)
{
 return l->mtu;
}

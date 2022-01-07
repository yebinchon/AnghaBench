
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_link {int state; } ;



u32 tipc_link_state(struct tipc_link *l)
{
 return l->state;
}

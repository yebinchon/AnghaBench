
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_link {int abort_limit; } ;



void tipc_link_set_abort_limit(struct tipc_link *l, u32 limit)
{
 l->abort_limit = limit;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tipc_link {int acked; } ;



u16 tipc_link_acked(struct tipc_link *l)
{
 return l->acked;
}

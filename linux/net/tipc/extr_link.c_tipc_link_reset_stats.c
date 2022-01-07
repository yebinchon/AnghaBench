
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int stats; } ;


 int memset (int *,int ,int) ;

void tipc_link_reset_stats(struct tipc_link *l)
{
 memset(&l->stats, 0, sizeof(l->stats));
}

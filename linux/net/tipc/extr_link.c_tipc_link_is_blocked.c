
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int state; } ;


 int LINK_FAILINGOVER ;
 int LINK_PEER_RESET ;
 int LINK_RESETTING ;

bool tipc_link_is_blocked(struct tipc_link *l)
{
 return l->state & (LINK_RESETTING | LINK_PEER_RESET | LINK_FAILINGOVER);
}

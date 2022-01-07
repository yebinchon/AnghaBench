
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {scalar_t__ state; } ;


 scalar_t__ LINK_PEER_RESET ;

bool tipc_link_peer_is_down(struct tipc_link *l)
{
 return l->state == LINK_PEER_RESET;
}

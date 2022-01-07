
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tipc_link {int peer_caps; } ;



void tipc_link_update_caps(struct tipc_link *l, u16 capabilities)
{
 l->peer_caps = capabilities;
}

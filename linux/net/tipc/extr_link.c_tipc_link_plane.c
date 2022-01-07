
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {char net_plane; } ;



char tipc_link_plane(struct tipc_link *l)
{
 return l->net_plane;
}

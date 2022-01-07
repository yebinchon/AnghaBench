
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_link {int peer_bearer_id; int bearer_id; } ;



u32 tipc_link_id(struct tipc_link *l)
{
 return l->peer_bearer_id << 16 | l->bearer_id;
}

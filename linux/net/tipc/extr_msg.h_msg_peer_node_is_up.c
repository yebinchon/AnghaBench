
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 scalar_t__ msg_peer_link_is_up (struct tipc_msg*) ;
 int msg_redundant_link (struct tipc_msg*) ;

__attribute__((used)) static inline bool msg_peer_node_is_up(struct tipc_msg *m)
{
 if (msg_peer_link_is_up(m))
  return 1;
 return msg_redundant_link(m);
}

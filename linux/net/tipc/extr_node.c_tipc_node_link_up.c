
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_node {int net; TYPE_1__* links; } ;
struct tipc_media_addr {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct TYPE_2__ {struct tipc_media_addr maddr; } ;


 int __tipc_node_link_up (struct tipc_node*,int,struct sk_buff_head*) ;
 int tipc_bearer_xmit (int ,int,struct sk_buff_head*,struct tipc_media_addr*) ;
 int tipc_node_write_lock (struct tipc_node*) ;
 int tipc_node_write_unlock (struct tipc_node*) ;

__attribute__((used)) static void tipc_node_link_up(struct tipc_node *n, int bearer_id,
         struct sk_buff_head *xmitq)
{
 struct tipc_media_addr *maddr;

 tipc_node_write_lock(n);
 __tipc_node_link_up(n, bearer_id, xmitq);
 maddr = &n->links[bearer_id].maddr;
 tipc_bearer_xmit(n->net, bearer_id, xmitq, maddr);
 tipc_node_write_unlock(n);
}

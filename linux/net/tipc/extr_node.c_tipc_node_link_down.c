
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int net; int addr; int link_cnt; struct tipc_link_entry* links; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_link_entry {int inputq; struct tipc_link* link; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;


 int LINK_RESET_EVT ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __tipc_node_link_down (struct tipc_node*,int*,struct sk_buff_head*,struct tipc_media_addr**) ;
 int kfree (struct tipc_link*) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int tipc_bearer_xmit (int ,int,struct sk_buff_head*,struct tipc_media_addr*) ;
 int tipc_link_fsm_evt (struct tipc_link*,int ) ;
 int tipc_link_is_establishing (struct tipc_link*) ;
 int tipc_link_reset (struct tipc_link*) ;
 int tipc_mon_remove_peer (int ,int ,int) ;
 int tipc_node_write_lock (struct tipc_node*) ;
 int tipc_node_write_unlock (struct tipc_node*) ;
 int tipc_sk_rcv (int ,int *) ;
 int trace_tipc_node_link_down (struct tipc_node*,int,char*) ;

__attribute__((used)) static void tipc_node_link_down(struct tipc_node *n, int bearer_id, bool delete)
{
 struct tipc_link_entry *le = &n->links[bearer_id];
 struct tipc_media_addr *maddr = ((void*)0);
 struct tipc_link *l = le->link;
 int old_bearer_id = bearer_id;
 struct sk_buff_head xmitq;

 if (!l)
  return;

 __skb_queue_head_init(&xmitq);

 tipc_node_write_lock(n);
 if (!tipc_link_is_establishing(l)) {
  __tipc_node_link_down(n, &bearer_id, &xmitq, &maddr);
 } else {

  tipc_link_reset(l);
  tipc_link_fsm_evt(l, LINK_RESET_EVT);
 }
 if (delete) {
  kfree(l);
  le->link = ((void*)0);
  n->link_cnt--;
 }
 trace_tipc_node_link_down(n, 1, "node link down or deleted!");
 tipc_node_write_unlock(n);
 if (delete)
  tipc_mon_remove_peer(n->net, n->addr, old_bearer_id);
 if (!skb_queue_empty(&xmitq))
  tipc_bearer_xmit(n->net, bearer_id, &xmitq, maddr);
 tipc_sk_rcv(n->net, &le->inputq);
}

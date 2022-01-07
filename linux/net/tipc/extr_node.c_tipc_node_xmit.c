
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {int* active_links; struct tipc_link_entry* links; } ;
struct tipc_link_entry {int maddr; int lock; int link; } ;
struct sk_buff_head {int lock; } ;
struct net {int dummy; } ;


 int EHOSTUNREACH ;
 int ENOBUFS ;
 int INVALID_BEARER_ID ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 scalar_t__ in_own_node (struct net*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_bearer_xmit (struct net*,int,struct sk_buff_head*,int *) ;
 int tipc_link_xmit (int ,struct sk_buff_head*,struct sk_buff_head*) ;
 int tipc_loopback_trace (struct net*,struct sk_buff_head*) ;
 struct tipc_node* tipc_node_find (struct net*,int ) ;
 int tipc_node_link_down (struct tipc_node*,int,int) ;
 int tipc_node_put (struct tipc_node*) ;
 int tipc_node_read_lock (struct tipc_node*) ;
 int tipc_node_read_unlock (struct tipc_node*) ;
 int tipc_sk_rcv (struct net*,struct sk_buff_head*) ;
 scalar_t__ unlikely (int) ;

int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
     u32 dnode, int selector)
{
 struct tipc_link_entry *le = ((void*)0);
 struct tipc_node *n;
 struct sk_buff_head xmitq;
 int bearer_id;
 int rc;

 if (in_own_node(net, dnode)) {
  tipc_loopback_trace(net, list);
  spin_lock_init(&list->lock);
  tipc_sk_rcv(net, list);
  return 0;
 }

 n = tipc_node_find(net, dnode);
 if (unlikely(!n)) {
  __skb_queue_purge(list);
  return -EHOSTUNREACH;
 }

 tipc_node_read_lock(n);
 bearer_id = n->active_links[selector & 1];
 if (unlikely(bearer_id == INVALID_BEARER_ID)) {
  tipc_node_read_unlock(n);
  tipc_node_put(n);
  __skb_queue_purge(list);
  return -EHOSTUNREACH;
 }

 __skb_queue_head_init(&xmitq);
 le = &n->links[bearer_id];
 spin_lock_bh(&le->lock);
 rc = tipc_link_xmit(le->link, list, &xmitq);
 spin_unlock_bh(&le->lock);
 tipc_node_read_unlock(n);

 if (unlikely(rc == -ENOBUFS))
  tipc_node_link_down(n, bearer_id, 0);
 else
  tipc_bearer_xmit(net, bearer_id, &xmitq, &le->maddr);

 tipc_node_put(n);

 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int lock; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;


 int GFP_ATOMIC ;
 int GROUP_PROTOCOL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 scalar_t__ TIPC_CLUSTER_SCOPE ;
 int TIPC_GRP_UCAST_MSG ;
 scalar_t__ TIPC_NODE_SCOPE ;
 struct sk_buff* __pskb_copy (struct sk_buff*,int,int ) ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int msg_hdr_sz (struct tipc_msg*) ;
 scalar_t__ msg_in_group (struct tipc_msg*) ;
 scalar_t__ msg_lookup_scope (struct tipc_msg*) ;
 scalar_t__ msg_namelower (struct tipc_msg*) ;
 scalar_t__ msg_nametype (struct tipc_msg*) ;
 scalar_t__ msg_nameupper (struct tipc_msg*) ;
 scalar_t__ msg_orignode (struct tipc_msg*) ;
 int msg_set_destport (struct tipc_msg*,scalar_t__) ;
 int msg_type (struct tipc_msg*) ;
 int msg_user (struct tipc_msg*) ;
 int pr_warn (char*) ;
 int skb_headroom (struct sk_buff*) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;
 int skb_queue_splice_tail_init (struct sk_buff_head*,struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ tipc_dest_pop (struct list_head*,int *,scalar_t__*) ;
 int tipc_nametbl_mc_lookup (struct net*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,struct list_head*) ;
 scalar_t__ tipc_own_addr (struct net*) ;
 int tipc_sk_rcv (struct net*,struct sk_buff_head*) ;
 struct sk_buff* tipc_skb_peek (struct sk_buff_head*,int *) ;

void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
         struct sk_buff_head *inputq)
{
 u32 self = tipc_own_addr(net);
 u32 type, lower, upper, scope;
 struct sk_buff *skb, *_skb;
 u32 portid, onode;
 struct sk_buff_head tmpq;
 struct list_head dports;
 struct tipc_msg *hdr;
 int user, mtyp, hlen;
 bool exact;

 __skb_queue_head_init(&tmpq);
 INIT_LIST_HEAD(&dports);

 skb = tipc_skb_peek(arrvq, &inputq->lock);
 for (; skb; skb = tipc_skb_peek(arrvq, &inputq->lock)) {
  hdr = buf_msg(skb);
  user = msg_user(hdr);
  mtyp = msg_type(hdr);
  hlen = skb_headroom(skb) + msg_hdr_sz(hdr);
  onode = msg_orignode(hdr);
  type = msg_nametype(hdr);

  if (mtyp == TIPC_GRP_UCAST_MSG || user == GROUP_PROTOCOL) {
   spin_lock_bh(&inputq->lock);
   if (skb_peek(arrvq) == skb) {
    __skb_dequeue(arrvq);
    __skb_queue_tail(inputq, skb);
   }
   kfree_skb(skb);
   spin_unlock_bh(&inputq->lock);
   continue;
  }


  if (msg_in_group(hdr)) {
   lower = 0;
   upper = ~0;
   scope = msg_lookup_scope(hdr);
   exact = 1;
  } else {

   if (onode == self)
    scope = TIPC_NODE_SCOPE;
   else
    scope = TIPC_CLUSTER_SCOPE;
   exact = 0;
   lower = msg_namelower(hdr);
   upper = msg_nameupper(hdr);
  }


  tipc_nametbl_mc_lookup(net, type, lower, upper,
           scope, exact, &dports);


  while (tipc_dest_pop(&dports, ((void*)0), &portid)) {
   _skb = __pskb_copy(skb, hlen, GFP_ATOMIC);
   if (_skb) {
    msg_set_destport(buf_msg(_skb), portid);
    __skb_queue_tail(&tmpq, _skb);
    continue;
   }
   pr_warn("Failed to clone mcast rcv buffer\n");
  }

  spin_lock_bh(&inputq->lock);
  if (skb_peek(arrvq) == skb) {
   skb_queue_splice_tail_init(&tmpq, inputq);
   kfree_skb(__skb_dequeue(arrvq));
  }
  spin_unlock_bh(&inputq->lock);
  __skb_queue_purge(&tmpq);
  kfree_skb(skb);
 }
 tipc_sk_rcv(net, inputq);
}

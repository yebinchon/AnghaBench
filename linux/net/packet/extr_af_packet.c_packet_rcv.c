
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct sockaddr_ll {scalar_t__ sll_pkttype; int sll_addr; int sll_halen; int sll_ifindex; int sll_hatype; } ;
struct TYPE_9__ {int lock; } ;
struct sock {scalar_t__ sk_type; scalar_t__ sk_rcvbuf; int sk_drops; int (* sk_data_ready ) (struct sock*) ;TYPE_4__ sk_receive_queue; int sk_rmem_alloc; } ;
struct sk_buff {int len; scalar_t__ pkt_type; int * data; struct net_device* dev; } ;
struct packet_type {struct sock* af_packet_priv; } ;
struct TYPE_7__ {int tp_packets; } ;
struct TYPE_8__ {TYPE_2__ stats1; } ;
struct packet_sock {int tp_drops; TYPE_3__ stats; int origdev; } ;
struct net_device {int ifindex; int type; scalar_t__ header_ops; } ;
struct TYPE_6__ {int origlen; struct sockaddr_ll ll; } ;
struct TYPE_10__ {TYPE_1__ sa; } ;


 int GFP_ATOMIC ;
 scalar_t__ MAX_ADDR_LEN ;
 scalar_t__ PACKET_LOOPBACK ;
 scalar_t__ PACKET_OUTGOING ;
 TYPE_5__* PACKET_SKB_CB (struct sk_buff*) ;
 scalar_t__ SOCK_DGRAM ;
 int __skb_queue_tail (TYPE_4__*,struct sk_buff*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int consume_skb (struct sk_buff*) ;
 int dev_net (struct net_device*) ;
 int dev_parse_header (struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int ) ;
 int nf_reset_ct (struct sk_buff*) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 scalar_t__ pskb_trim (struct sk_buff*,unsigned int) ;
 unsigned int run_filter (struct sk_buff*,struct sock*,unsigned int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int *) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 scalar_t__ skb_shared (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int sock_skb_cb_check_size (scalar_t__) ;
 int sock_skb_set_dropcount (struct sock*,struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sock*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int packet_rcv(struct sk_buff *skb, struct net_device *dev,
        struct packet_type *pt, struct net_device *orig_dev)
{
 struct sock *sk;
 struct sockaddr_ll *sll;
 struct packet_sock *po;
 u8 *skb_head = skb->data;
 int skb_len = skb->len;
 unsigned int snaplen, res;
 bool is_drop_n_account = 0;

 if (skb->pkt_type == PACKET_LOOPBACK)
  goto drop;

 sk = pt->af_packet_priv;
 po = pkt_sk(sk);

 if (!net_eq(dev_net(dev), sock_net(sk)))
  goto drop;

 skb->dev = dev;

 if (dev->header_ops) {







  if (sk->sk_type != SOCK_DGRAM)
   skb_push(skb, skb->data - skb_mac_header(skb));
  else if (skb->pkt_type == PACKET_OUTGOING) {

   skb_pull(skb, skb_network_offset(skb));
  }
 }

 snaplen = skb->len;

 res = run_filter(skb, sk, snaplen);
 if (!res)
  goto drop_n_restore;
 if (snaplen > res)
  snaplen = res;

 if (atomic_read(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf)
  goto drop_n_acct;

 if (skb_shared(skb)) {
  struct sk_buff *nskb = skb_clone(skb, GFP_ATOMIC);
  if (nskb == ((void*)0))
   goto drop_n_acct;

  if (skb_head != skb->data) {
   skb->data = skb_head;
   skb->len = skb_len;
  }
  consume_skb(skb);
  skb = nskb;
 }

 sock_skb_cb_check_size(sizeof(*PACKET_SKB_CB(skb)) + MAX_ADDR_LEN - 8);

 sll = &PACKET_SKB_CB(skb)->sa.ll;
 sll->sll_hatype = dev->type;
 sll->sll_pkttype = skb->pkt_type;
 if (unlikely(po->origdev))
  sll->sll_ifindex = orig_dev->ifindex;
 else
  sll->sll_ifindex = dev->ifindex;

 sll->sll_halen = dev_parse_header(skb, sll->sll_addr);




 PACKET_SKB_CB(skb)->sa.origlen = skb->len;

 if (pskb_trim(skb, snaplen))
  goto drop_n_acct;

 skb_set_owner_r(skb, sk);
 skb->dev = ((void*)0);
 skb_dst_drop(skb);


 nf_reset_ct(skb);

 spin_lock(&sk->sk_receive_queue.lock);
 po->stats.stats1.tp_packets++;
 sock_skb_set_dropcount(sk, skb);
 __skb_queue_tail(&sk->sk_receive_queue, skb);
 spin_unlock(&sk->sk_receive_queue.lock);
 sk->sk_data_ready(sk);
 return 0;

drop_n_acct:
 is_drop_n_account = 1;
 atomic_inc(&po->tp_drops);
 atomic_inc(&sk->sk_drops);

drop_n_restore:
 if (skb_head != skb->data && skb_shared(skb)) {
  skb->data = skb_head;
  skb->len = skb_len;
 }
drop:
 if (!is_drop_n_account)
  consume_skb(skb);
 else
  kfree_skb(skb);
 return 0;
}

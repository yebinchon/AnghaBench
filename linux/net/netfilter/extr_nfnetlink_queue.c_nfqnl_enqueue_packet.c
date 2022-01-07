
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct sk_buff* next; void* protocol; } ;
struct nfqnl_instance {scalar_t__ copy_mode; int flags; } ;
struct nfnl_queue_net {int dummy; } ;
struct TYPE_2__ {int pf; struct net* net; } ;
struct nf_queue_entry {TYPE_1__ state; struct sk_buff* skb; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ESRCH ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IS_ERR_OR_NULL (struct sk_buff*) ;


 int NFQA_CFG_F_GSO ;
 scalar_t__ NFQNL_COPY_NONE ;
 int __nfqnl_enqueue_packet (struct net*,struct nfqnl_instance*,struct nf_queue_entry*) ;
 int __nfqnl_enqueue_packet_gso (struct net*,struct nfqnl_instance*,struct sk_buff*,struct nf_queue_entry*) ;
 int free_entry (struct nf_queue_entry*) ;
 void* htons (int ) ;
 struct nfqnl_instance* instance_lookup (struct nfnl_queue_net*,unsigned int) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_bridge_adjust_segmented_data (struct sk_buff*) ;
 int nf_bridge_adjust_skb_data (struct sk_buff*) ;
 struct nfnl_queue_net* nfnl_queue_pernet (struct net*) ;
 struct sk_buff* skb_gso_segment (struct sk_buff*,int ) ;
 int skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static int
nfqnl_enqueue_packet(struct nf_queue_entry *entry, unsigned int queuenum)
{
 unsigned int queued;
 struct nfqnl_instance *queue;
 struct sk_buff *skb, *segs;
 int err = -ENOBUFS;
 struct net *net = entry->state.net;
 struct nfnl_queue_net *q = nfnl_queue_pernet(net);


 queue = instance_lookup(q, queuenum);
 if (!queue)
  return -ESRCH;

 if (queue->copy_mode == NFQNL_COPY_NONE)
  return -EINVAL;

 skb = entry->skb;

 switch (entry->state.pf) {
 case 129:
  skb->protocol = htons(ETH_P_IP);
  break;
 case 128:
  skb->protocol = htons(ETH_P_IPV6);
  break;
 }

 if ((queue->flags & NFQA_CFG_F_GSO) || !skb_is_gso(skb))
  return __nfqnl_enqueue_packet(net, queue, entry);

 nf_bridge_adjust_skb_data(skb);
 segs = skb_gso_segment(skb, 0);




 if (IS_ERR_OR_NULL(segs))
  goto out_err;
 queued = 0;
 err = 0;
 do {
  struct sk_buff *nskb = segs->next;
  if (err == 0)
   err = __nfqnl_enqueue_packet_gso(net, queue,
       segs, entry);
  if (err == 0)
   queued++;
  else
   kfree_skb(segs);
  segs = nskb;
 } while (segs);

 if (queued) {
  if (err)
   free_entry(entry);
  kfree_skb(skb);
  return 0;
 }
 out_err:
 nf_bridge_adjust_segmented_data(skb);
 return err;
}

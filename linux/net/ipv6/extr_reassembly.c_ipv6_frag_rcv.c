
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {int transport_header; TYPE_4__* dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {scalar_t__ payload_len; } ;
struct TYPE_7__ {int lock; } ;
struct frag_queue {int iif; TYPE_3__ q; } ;
struct frag_hdr {int frag_off; int identification; } ;
struct TYPE_9__ {int flags; int * nhoff; } ;
struct TYPE_8__ {int ifindex; } ;
struct TYPE_6__ {int dev; } ;


 int ICMPV6_HDR_FIELD ;
 TYPE_5__* IP6CB (struct sk_buff*) ;
 int IP6SKB_FRAGMENTED ;
 int IPSTATS_MIB_INHDRERRORS ;
 int IPSTATS_MIB_REASMFAILS ;
 int IPSTATS_MIB_REASMOKS ;
 int IPSTATS_MIB_REASMREQDS ;
 int __IP6_INC_STATS (struct net*,int ,int ) ;
 int __in6_dev_get_safely (TYPE_4__*) ;
 struct net* dev_net (int ) ;
 struct frag_queue* fq_find (struct net*,int ,struct ipv6hdr const*,int) ;
 int htons (int) ;
 int icmpv6_param_prob (struct sk_buff*,int ,scalar_t__) ;
 int inet_frag_put (TYPE_3__*) ;
 int ip6_dst_idev (TYPE_1__*) ;
 int ip6_frag_queue (struct frag_queue*,struct sk_buff*,struct frag_hdr*,int *,scalar_t__*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;
 scalar_t__ skb_network_header_len (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ipv6_frag_rcv(struct sk_buff *skb)
{
 struct frag_hdr *fhdr;
 struct frag_queue *fq;
 const struct ipv6hdr *hdr = ipv6_hdr(skb);
 struct net *net = dev_net(skb_dst(skb)->dev);
 int iif;

 if (IP6CB(skb)->flags & IP6SKB_FRAGMENTED)
  goto fail_hdr;

 __IP6_INC_STATS(net, ip6_dst_idev(skb_dst(skb)), IPSTATS_MIB_REASMREQDS);


 if (hdr->payload_len == 0)
  goto fail_hdr;

 if (!pskb_may_pull(skb, (skb_transport_offset(skb) +
     sizeof(struct frag_hdr))))
  goto fail_hdr;

 hdr = ipv6_hdr(skb);
 fhdr = (struct frag_hdr *)skb_transport_header(skb);

 if (!(fhdr->frag_off & htons(0xFFF9))) {

  skb->transport_header += sizeof(struct frag_hdr);
  __IP6_INC_STATS(net,
    ip6_dst_idev(skb_dst(skb)), IPSTATS_MIB_REASMOKS);

  IP6CB(skb)->nhoff = (u8 *)fhdr - skb_network_header(skb);
  IP6CB(skb)->flags |= IP6SKB_FRAGMENTED;
  return 1;
 }

 iif = skb->dev ? skb->dev->ifindex : 0;
 fq = fq_find(net, fhdr->identification, hdr, iif);
 if (fq) {
  u32 prob_offset = 0;
  int ret;

  spin_lock(&fq->q.lock);

  fq->iif = iif;
  ret = ip6_frag_queue(fq, skb, fhdr, IP6CB(skb)->nhoff,
         &prob_offset);

  spin_unlock(&fq->q.lock);
  inet_frag_put(&fq->q);
  if (prob_offset) {
   __IP6_INC_STATS(net, __in6_dev_get_safely(skb->dev),
     IPSTATS_MIB_INHDRERRORS);

   icmpv6_param_prob(skb, ICMPV6_HDR_FIELD, prob_offset);
  }
  return ret;
 }

 __IP6_INC_STATS(net, ip6_dst_idev(skb_dst(skb)), IPSTATS_MIB_REASMFAILS);
 kfree_skb(skb);
 return -1;

fail_hdr:
 __IP6_INC_STATS(net, __in6_dev_get_safely(skb->dev),
   IPSTATS_MIB_INHDRERRORS);
 icmpv6_param_prob(skb, ICMPV6_HDR_FIELD, skb_network_header_len(skb));
 return -1;
}

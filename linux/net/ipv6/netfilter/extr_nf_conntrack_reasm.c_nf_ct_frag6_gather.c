
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int transport_header; TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {scalar_t__ payload_len; } ;
struct TYPE_4__ {int lock; } ;
struct frag_queue {TYPE_2__ q; } ;
struct frag_hdr {int identification; } ;
struct TYPE_3__ {int ifindex; } ;


 int ENOMEM ;
 int EPROTO ;
 scalar_t__ find_prev_fhdr (struct sk_buff*,int *,int*,int*) ;
 struct frag_queue* fq_find (struct net*,int ,int ,struct ipv6hdr*,int ) ;
 int inet_frag_put (TYPE_2__*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int nf_ct_frag6_queue (struct frag_queue*,struct sk_buff*,struct frag_hdr*,int) ;
 int pr_debug (char*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,int) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int nf_ct_frag6_gather(struct net *net, struct sk_buff *skb, u32 user)
{
 u16 savethdr = skb->transport_header;
 int fhoff, nhoff, ret;
 struct frag_hdr *fhdr;
 struct frag_queue *fq;
 struct ipv6hdr *hdr;
 u8 prevhdr;


 if (ipv6_hdr(skb)->payload_len == 0) {
  pr_debug("payload len = 0\n");
  return 0;
 }

 if (find_prev_fhdr(skb, &prevhdr, &nhoff, &fhoff) < 0)
  return 0;

 if (!pskb_may_pull(skb, fhoff + sizeof(*fhdr)))
  return -ENOMEM;

 skb_set_transport_header(skb, fhoff);
 hdr = ipv6_hdr(skb);
 fhdr = (struct frag_hdr *)skb_transport_header(skb);

 skb_orphan(skb);
 fq = fq_find(net, fhdr->identification, user, hdr,
       skb->dev ? skb->dev->ifindex : 0);
 if (fq == ((void*)0)) {
  pr_debug("Can't find and can't create new queue\n");
  return -ENOMEM;
 }

 spin_lock_bh(&fq->q.lock);

 ret = nf_ct_frag6_queue(fq, skb, fhdr, nhoff);
 if (ret == -EPROTO) {
  skb->transport_header = savethdr;
  ret = 0;
 }

 spin_unlock_bh(&fq->q.lock);
 inet_frag_put(&fq->q);
 return ret;
}

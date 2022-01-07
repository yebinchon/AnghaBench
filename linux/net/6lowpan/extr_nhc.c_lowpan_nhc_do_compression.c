
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ transport_header; scalar_t__ network_header; } ;
struct lowpan_nhc {int (* compress ) (struct sk_buff*,int **) ;int nexthdrlen; } ;
struct ipv6hdr {size_t nexthdr; } ;


 int EINVAL ;
 struct lowpan_nhc** lowpan_nexthdr_nhcs ;
 int lowpan_nhc_lock ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_set_transport_header (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct sk_buff*,int **) ;
 scalar_t__ unlikely (int) ;

int lowpan_nhc_do_compression(struct sk_buff *skb, const struct ipv6hdr *hdr,
         u8 **hc_ptr)
{
 int ret;
 struct lowpan_nhc *nhc;

 spin_lock_bh(&lowpan_nhc_lock);

 nhc = lowpan_nexthdr_nhcs[hdr->nexthdr];
 if (unlikely(!nhc || !nhc->compress)) {
  ret = -EINVAL;
  goto out;
 }




 if (skb->transport_header == skb->network_header)
  skb_set_transport_header(skb, sizeof(struct ipv6hdr));

 ret = nhc->compress(skb, hc_ptr);
 if (ret < 0)
  goto out;


 skb_pull(skb, nhc->nexthdrlen);

out:
 spin_unlock_bh(&lowpan_nhc_lock);

 return ret;
}

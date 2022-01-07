
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct lowpan_nhc {scalar_t__ compress; } ;
struct ipv6hdr {size_t nexthdr; } ;


 int ENOENT ;
 struct lowpan_nhc** lowpan_nexthdr_nhcs ;
 int lowpan_nhc_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int lowpan_nhc_check_compression(struct sk_buff *skb,
     const struct ipv6hdr *hdr, u8 **hc_ptr)
{
 struct lowpan_nhc *nhc;
 int ret = 0;

 spin_lock_bh(&lowpan_nhc_lock);

 nhc = lowpan_nexthdr_nhcs[hdr->nexthdr];
 if (!(nhc && nhc->compress))
  ret = -ENOENT;

 spin_unlock_bh(&lowpan_nhc_lock);

 return ret;
}

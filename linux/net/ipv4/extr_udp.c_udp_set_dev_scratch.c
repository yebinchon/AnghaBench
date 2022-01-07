
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_dev_scratch {int csum_unnecessary; int is_linear; int _tsize_state; int len; } ;
struct sk_buff {int len; int truesize; } ;


 int BUILD_BUG_ON (int) ;
 int UDP_SKB_IS_STATELESS ;
 scalar_t__ likely (int) ;
 int skb_csum_unnecessary (struct sk_buff*) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 int skb_sec_path (struct sk_buff*) ;
 struct udp_dev_scratch* udp_skb_scratch (struct sk_buff*) ;

__attribute__((used)) static void udp_set_dev_scratch(struct sk_buff *skb)
{
 struct udp_dev_scratch *scratch = udp_skb_scratch(skb);

 BUILD_BUG_ON(sizeof(struct udp_dev_scratch) > sizeof(long));
 scratch->_tsize_state = skb->truesize;
 if (likely(!skb_sec_path(skb)))
  scratch->_tsize_state |= UDP_SKB_IS_STATELESS;
}

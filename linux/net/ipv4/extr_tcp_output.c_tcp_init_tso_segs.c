
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int tcp_set_skb_tso_segs (struct sk_buff*,unsigned int) ;
 unsigned int tcp_skb_mss (struct sk_buff*) ;
 int tcp_skb_pcount (struct sk_buff*) ;

__attribute__((used)) static int tcp_init_tso_segs(struct sk_buff *skb, unsigned int mss_now)
{
 int tso_segs = tcp_skb_pcount(skb);

 if (!tso_segs || (tso_segs > 1 && tcp_skb_mss(skb) != mss_now)) {
  tcp_set_skb_tso_segs(skb, mss_now);
  tso_segs = tcp_skb_pcount(skb);
 }
 return tso_segs;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;


 int TCP_MIN_GSO_SIZE ;
 int skb_shift (struct sk_buff*,struct sk_buff*,int) ;
 int tcp_skb_pcount (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int tcp_skb_shift(struct sk_buff *to, struct sk_buff *from,
    int pcount, int shiftlen)
{





 if (unlikely(to->len + shiftlen >= 65535 * TCP_MIN_GSO_SIZE))
  return 0;
 if (unlikely(tcp_skb_pcount(to) + pcount > 65535))
  return 0;
 return skb_shift(to, from, shiftlen);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int * ht; } ;


 int RAW_HTABLE_SIZE ;
 int ipv6_raw_deliver (struct sk_buff*,int) ;
 TYPE_1__ raw_v6_hashinfo ;
 struct sock* sk_head (int *) ;

bool raw6_local_deliver(struct sk_buff *skb, int nexthdr)
{
 struct sock *raw_sk;

 raw_sk = sk_head(&raw_v6_hashinfo.ht[nexthdr & (RAW_HTABLE_SIZE - 1)]);
 if (raw_sk && !ipv6_raw_deliver(skb, nexthdr))
  raw_sk = ((void*)0);

 return raw_sk != ((void*)0);
}

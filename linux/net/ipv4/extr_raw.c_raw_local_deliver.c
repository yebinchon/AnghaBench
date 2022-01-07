
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int * ht; } ;


 int RAW_HTABLE_SIZE ;
 int ip_hdr (struct sk_buff*) ;
 TYPE_1__ raw_v4_hashinfo ;
 int raw_v4_input (struct sk_buff*,int ,int) ;
 struct sock* sk_head (int *) ;

int raw_local_deliver(struct sk_buff *skb, int protocol)
{
 int hash;
 struct sock *raw_sk;

 hash = protocol & (RAW_HTABLE_SIZE - 1);
 raw_sk = sk_head(&raw_v4_hashinfo.ht[hash]);




 if (raw_sk && !raw_v4_input(skb, ip_hdr(skb), hash))
  raw_sk = ((void*)0);

 return raw_sk != ((void*)0);

}

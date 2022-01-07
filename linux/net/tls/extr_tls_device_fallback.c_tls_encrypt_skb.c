
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;


 struct sk_buff* tls_sw_fallback (int ,struct sk_buff*) ;

struct sk_buff *tls_encrypt_skb(struct sk_buff *skb)
{
 return tls_sw_fallback(skb->sk, skb);
}

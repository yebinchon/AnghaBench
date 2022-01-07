
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int sk_filter_trim_cap (struct sock*,struct sk_buff*,int) ;

int tcp_filter(struct sock *sk, struct sk_buff *skb)
{
 struct tcphdr *th = (struct tcphdr *)skb->data;

 return sk_filter_trim_cap(sk, skb, th->doff * 4);
}

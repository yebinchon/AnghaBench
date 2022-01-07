
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int syn; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 struct sock* cookie_v4_check (struct sock*,struct sk_buff*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;

__attribute__((used)) static struct sock *tcp_v4_cookie_check(struct sock *sk, struct sk_buff *skb)
{






 return sk;
}

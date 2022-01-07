
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_refcnt; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct inet_hashinfo {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __be16 ;


 struct sock* __inet6_lookup (struct net*,struct inet_hashinfo*,struct sk_buff*,int,struct in6_addr const*,int const,struct in6_addr const*,int ,int const,int ,int*) ;
 int ntohs (int const) ;
 int refcount_inc_not_zero (int *) ;

struct sock *inet6_lookup(struct net *net, struct inet_hashinfo *hashinfo,
     struct sk_buff *skb, int doff,
     const struct in6_addr *saddr, const __be16 sport,
     const struct in6_addr *daddr, const __be16 dport,
     const int dif)
{
 struct sock *sk;
 bool refcounted;

 sk = __inet6_lookup(net, hashinfo, skb, doff, saddr, sport, daddr,
       ntohs(dport), dif, 0, &refcounted);
 if (sk && !refcounted && !refcount_inc_not_zero(&sk->sk_refcnt))
  sk = ((void*)0);
 return sk;
}

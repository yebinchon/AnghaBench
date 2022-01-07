
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;



__attribute__((used)) static void dummy_ipv6_icmp_error(struct sock *sk, struct sk_buff *skb, int err,
      __be16 port, u32 info, u8 *payload) {}

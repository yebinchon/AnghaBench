
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rt6_info {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int rx_dst_cookie; } ;


 TYPE_1__* inet6_sk (struct sock*) ;
 int rt6_get_cookie (struct rt6_info const*) ;
 scalar_t__ udp_sk_rx_dst_set (struct sock*,struct dst_entry*) ;

__attribute__((used)) static void udp6_sk_rx_dst_set(struct sock *sk, struct dst_entry *dst)
{
 if (udp_sk_rx_dst_set(sk, dst)) {
  const struct rt6_info *rt = (const struct rt6_info *)dst;

  inet6_sk(sk)->rx_dst_cookie = rt6_get_cookie(rt);
 }
}

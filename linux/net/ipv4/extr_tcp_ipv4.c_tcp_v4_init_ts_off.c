
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int saddr; int daddr; } ;


 TYPE_1__* ip_hdr (struct sk_buff const*) ;
 int secure_tcp_ts_off (struct net const*,int ,int ) ;

__attribute__((used)) static u32 tcp_v4_init_ts_off(const struct net *net, const struct sk_buff *skb)
{
 return secure_tcp_ts_off(net, ip_hdr(skb)->daddr, ip_hdr(skb)->saddr);
}

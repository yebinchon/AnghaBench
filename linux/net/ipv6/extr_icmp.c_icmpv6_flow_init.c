
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int flowi6_oif; scalar_t__ fl6_icmp_code; int fl6_icmp_type; int flowi6_proto; struct in6_addr daddr; struct in6_addr saddr; } ;


 int IPPROTO_ICMPV6 ;
 int flowi6_to_flowi (struct flowi6*) ;
 int memset (struct flowi6*,int ,int) ;
 int security_sk_classify_flow (struct sock*,int ) ;

void icmpv6_flow_init(struct sock *sk, struct flowi6 *fl6,
        u8 type,
        const struct in6_addr *saddr,
        const struct in6_addr *daddr,
        int oif)
{
 memset(fl6, 0, sizeof(*fl6));
 fl6->saddr = *saddr;
 fl6->daddr = *daddr;
 fl6->flowi6_proto = IPPROTO_ICMPV6;
 fl6->fl6_icmp_type = type;
 fl6->fl6_icmp_code = 0;
 fl6->flowi6_oif = oif;
 security_sk_classify_flow(sk, flowi6_to_flowi(fl6));
}

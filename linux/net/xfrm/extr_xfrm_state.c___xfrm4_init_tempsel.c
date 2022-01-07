
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int a4; } ;
struct TYPE_5__ {int a4; } ;
struct xfrm_selector {int prefixlen_d; int prefixlen_s; int ifindex; int proto; int family; void* sport_mask; int sport; void* dport_mask; int dport; TYPE_3__ saddr; TYPE_2__ daddr; } ;
struct flowi4 {int flowi4_oif; int flowi4_proto; int uli; int saddr; int daddr; } ;
struct TYPE_4__ {struct flowi4 ip4; } ;
struct flowi {TYPE_1__ u; } ;


 int AF_INET ;
 void* htons (int) ;
 int xfrm_flowi_dport (struct flowi const*,int *) ;
 int xfrm_flowi_sport (struct flowi const*,int *) ;

__attribute__((used)) static void
__xfrm4_init_tempsel(struct xfrm_selector *sel, const struct flowi *fl)
{
 const struct flowi4 *fl4 = &fl->u.ip4;

 sel->daddr.a4 = fl4->daddr;
 sel->saddr.a4 = fl4->saddr;
 sel->dport = xfrm_flowi_dport(fl, &fl4->uli);
 sel->dport_mask = htons(0xffff);
 sel->sport = xfrm_flowi_sport(fl, &fl4->uli);
 sel->sport_mask = htons(0xffff);
 sel->family = AF_INET;
 sel->prefixlen_d = 32;
 sel->prefixlen_s = 32;
 sel->proto = fl4->flowi4_proto;
 sel->ifindex = fl4->flowi4_oif;
}

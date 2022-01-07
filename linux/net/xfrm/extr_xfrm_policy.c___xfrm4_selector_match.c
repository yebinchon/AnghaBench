
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int a4; } ;
struct TYPE_5__ {int a4; } ;
struct xfrm_selector {int dport; int dport_mask; int sport; int sport_mask; scalar_t__ proto; scalar_t__ ifindex; int prefixlen_s; TYPE_3__ saddr; int prefixlen_d; TYPE_2__ daddr; } ;
struct flowi4 {scalar_t__ flowi4_proto; scalar_t__ flowi4_oif; int uli; int saddr; int daddr; } ;
struct TYPE_4__ {struct flowi4 ip4; } ;
struct flowi {TYPE_1__ u; } ;


 scalar_t__ addr4_match (int ,int ,int ) ;
 int xfrm_flowi_dport (struct flowi const*,int *) ;
 int xfrm_flowi_sport (struct flowi const*,int *) ;

__attribute__((used)) static inline bool
__xfrm4_selector_match(const struct xfrm_selector *sel, const struct flowi *fl)
{
 const struct flowi4 *fl4 = &fl->u.ip4;

 return addr4_match(fl4->daddr, sel->daddr.a4, sel->prefixlen_d) &&
  addr4_match(fl4->saddr, sel->saddr.a4, sel->prefixlen_s) &&
  !((xfrm_flowi_dport(fl, &fl4->uli) ^ sel->dport) & sel->dport_mask) &&
  !((xfrm_flowi_sport(fl, &fl4->uli) ^ sel->sport) & sel->sport_mask) &&
  (fl4->flowi4_proto == sel->proto || !sel->proto) &&
  (fl4->flowi4_oif == sel->ifindex || !sel->ifindex);
}

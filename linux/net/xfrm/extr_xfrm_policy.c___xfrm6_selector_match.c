
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_selector {int dport; int dport_mask; int sport; int sport_mask; scalar_t__ proto; scalar_t__ ifindex; int prefixlen_s; int saddr; int prefixlen_d; int daddr; } ;
struct flowi6 {scalar_t__ flowi6_proto; scalar_t__ flowi6_oif; int uli; int saddr; int daddr; } ;
struct TYPE_2__ {struct flowi6 ip6; } ;
struct flowi {TYPE_1__ u; } ;


 scalar_t__ addr_match (int *,int *,int ) ;
 int xfrm_flowi_dport (struct flowi const*,int *) ;
 int xfrm_flowi_sport (struct flowi const*,int *) ;

__attribute__((used)) static inline bool
__xfrm6_selector_match(const struct xfrm_selector *sel, const struct flowi *fl)
{
 const struct flowi6 *fl6 = &fl->u.ip6;

 return addr_match(&fl6->daddr, &sel->daddr, sel->prefixlen_d) &&
  addr_match(&fl6->saddr, &sel->saddr, sel->prefixlen_s) &&
  !((xfrm_flowi_dport(fl, &fl6->uli) ^ sel->dport) & sel->dport_mask) &&
  !((xfrm_flowi_sport(fl, &fl6->uli) ^ sel->sport) & sel->sport_mask) &&
  (fl6->flowi6_proto == sel->proto || !sel->proto) &&
  (fl6->flowi6_oif == sel->ifindex || !sel->ifindex);
}

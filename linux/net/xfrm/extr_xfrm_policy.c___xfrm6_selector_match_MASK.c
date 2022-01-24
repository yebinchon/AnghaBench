#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xfrm_selector {int dport; int dport_mask; int sport; int sport_mask; scalar_t__ proto; scalar_t__ ifindex; int /*<<< orphan*/  prefixlen_s; int /*<<< orphan*/  saddr; int /*<<< orphan*/  prefixlen_d; int /*<<< orphan*/  daddr; } ;
struct flowi6 {scalar_t__ flowi6_proto; scalar_t__ flowi6_oif; int /*<<< orphan*/  uli; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_2__ {struct flowi6 ip6; } ;
struct flowi {TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct flowi const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct flowi const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool
FUNC3(const struct xfrm_selector *sel, const struct flowi *fl)
{
	const struct flowi6 *fl6 = &fl->u.ip6;

	return  FUNC0(&fl6->daddr, &sel->daddr, sel->prefixlen_d) &&
		FUNC0(&fl6->saddr, &sel->saddr, sel->prefixlen_s) &&
		!((FUNC1(fl, &fl6->uli) ^ sel->dport) & sel->dport_mask) &&
		!((FUNC2(fl, &fl6->uli) ^ sel->sport) & sel->sport_mask) &&
		(fl6->flowi6_proto == sel->proto || !sel->proto) &&
		(fl6->flowi6_oif == sel->ifindex || !sel->ifindex);
}
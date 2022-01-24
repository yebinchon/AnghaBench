#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u_int32_t ;
struct sk_buff {int dummy; } ;
struct rtable {int /*<<< orphan*/  dst; } ;
struct net {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  daddr; } ;
struct flowi4 {int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {struct flowi6 ip6; struct flowi6 ip4; } ;
struct flowi {TYPE_1__ u; } ;
struct dst_entry {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 unsigned int PF_INET ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (struct sk_buff const*) ; 
 TYPE_2__* FUNC3 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC4 (struct flowi6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,struct dst_entry**,struct flowi*,int,unsigned int) ; 

__attribute__((used)) static u_int32_t FUNC6(struct net *net,
				    const struct sk_buff *skb,
				    unsigned int family)
{
	struct flowi fl;
	struct rtable *rt = NULL;
	u_int32_t mtu     = ~0U;

	if (family == PF_INET) {
		struct flowi4 *fl4 = &fl.u.ip4;
		FUNC4(fl4, 0, sizeof(*fl4));
		fl4->daddr = FUNC2(skb)->saddr;
	} else {
		struct flowi6 *fl6 = &fl.u.ip6;

		FUNC4(fl6, 0, sizeof(*fl6));
		fl6->daddr = FUNC3(skb)->saddr;
	}

	FUNC5(net, (struct dst_entry **)&rt, &fl, false, family);
	if (rt != NULL) {
		mtu = FUNC0(&rt->dst);
		FUNC1(&rt->dst);
	}
	return mtu;
}
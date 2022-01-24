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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge_port {TYPE_1__* br; } ;
struct ethhdr {scalar_t__ h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct ebt_entry {int bitmask; scalar_t__ ethproto; int /*<<< orphan*/  destmsk; int /*<<< orphan*/  destmac; int /*<<< orphan*/  sourcemsk; int /*<<< orphan*/  sourcemac; int /*<<< orphan*/  logical_out; int /*<<< orphan*/  logical_in; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {struct net_device const* dev; } ;

/* Variables and functions */
 int EBT_802_3 ; 
 int EBT_DESTMAC ; 
 int /*<<< orphan*/  EBT_IDEST ; 
 int /*<<< orphan*/  EBT_IIN ; 
 int /*<<< orphan*/  EBT_ILOGICALIN ; 
 int /*<<< orphan*/  EBT_ILOGICALOUT ; 
 int /*<<< orphan*/  EBT_IOUT ; 
 int /*<<< orphan*/  EBT_IPROTO ; 
 int /*<<< orphan*/  EBT_ISOURCE ; 
 int EBT_NOPROTO ; 
 int EBT_SOURCEMAC ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ FUNC0 (struct ebt_entry const*,int /*<<< orphan*/ ,int) ; 
 struct net_bridge_port* FUNC1 (struct net_device const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct net_device const*) ; 
 struct ethhdr* FUNC3 (struct sk_buff const*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff const*) ; 

__attribute__((used)) static inline int
FUNC8(const struct ebt_entry *e, const struct sk_buff *skb,
		const struct net_device *in, const struct net_device *out)
{
	const struct ethhdr *h = FUNC3(skb);
	const struct net_bridge_port *p;
	__be16 ethproto;

	if (FUNC7(skb))
		ethproto = FUNC6(ETH_P_8021Q);
	else
		ethproto = h->h_proto;

	if (e->bitmask & EBT_802_3) {
		if (FUNC0(e, EBT_IPROTO, FUNC4(ethproto)))
			return 1;
	} else if (!(e->bitmask & EBT_NOPROTO) &&
		   FUNC0(e, EBT_IPROTO, e->ethproto != ethproto))
		return 1;

	if (FUNC0(e, EBT_IIN, FUNC2(e->in, in)))
		return 1;
	if (FUNC0(e, EBT_IOUT, FUNC2(e->out, out)))
		return 1;
	/* rcu_read_lock()ed by nf_hook_thresh */
	if (in && (p = FUNC1(in)) != NULL &&
	    FUNC0(e, EBT_ILOGICALIN,
		    FUNC2(e->logical_in, p->br->dev)))
		return 1;
	if (out && (p = FUNC1(out)) != NULL &&
	    FUNC0(e, EBT_ILOGICALOUT,
		    FUNC2(e->logical_out, p->br->dev)))
		return 1;

	if (e->bitmask & EBT_SOURCEMAC) {
		if (FUNC0(e, EBT_ISOURCE,
			    !FUNC5(h->h_source, e->sourcemac,
						     e->sourcemsk)))
			return 1;
	}
	if (e->bitmask & EBT_DESTMAC) {
		if (FUNC0(e, EBT_IDEST,
			    !FUNC5(h->h_dest, e->destmac,
						     e->destmsk)))
			return 1;
	}
	return 0;
}
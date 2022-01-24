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
struct udphdr {scalar_t__ source; scalar_t__ dest; scalar_t__ check; } ;
struct TYPE_2__ {scalar_t__ dst; scalar_t__ src; } ;
struct sw_flow_key {TYPE_1__ tp; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct ovs_key_udp {int /*<<< orphan*/  udp_dst; int /*<<< orphan*/  udp_src; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 struct udphdr* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct sw_flow_key *flow_key,
		   const struct ovs_key_udp *key,
		   const struct ovs_key_udp *mask)
{
	struct udphdr *uh;
	__be16 src, dst;
	int err;

	err = FUNC4(skb, FUNC5(skb) +
				  sizeof(struct udphdr));
	if (FUNC7(err))
		return err;

	uh = FUNC6(skb);
	/* Either of the masks is non-zero, so do not bother checking them. */
	src = FUNC0(uh->source, key->udp_src, mask->udp_src);
	dst = FUNC0(uh->dest, key->udp_dst, mask->udp_dst);

	if (uh->check && skb->ip_summed != CHECKSUM_PARTIAL) {
		if (FUNC1(src != uh->source)) {
			FUNC2(skb, &uh->source, src, &uh->check);
			flow_key->tp.src = src;
		}
		if (FUNC1(dst != uh->dest)) {
			FUNC2(skb, &uh->dest, dst, &uh->check);
			flow_key->tp.dst = dst;
		}

		if (FUNC7(!uh->check))
			uh->check = CSUM_MANGLED_0;
	} else {
		uh->source = src;
		uh->dest = dst;
		flow_key->tp.src = src;
		flow_key->tp.dst = dst;
	}

	FUNC3(skb);

	return 0;
}
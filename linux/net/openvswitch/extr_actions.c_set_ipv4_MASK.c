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
struct TYPE_6__ {int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
struct TYPE_4__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct sw_flow_key {TYPE_3__ ip; TYPE_2__ ipv4; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_ipv4 {int ipv4_tos; int /*<<< orphan*/  ipv4_ttl; int /*<<< orphan*/  ipv4_dst; int /*<<< orphan*/  ipv4_src; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct iphdr*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct iphdr*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct iphdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct sw_flow_key *flow_key,
		    const struct ovs_key_ipv4 *key,
		    const struct ovs_key_ipv4 *mask)
{
	struct iphdr *nh;
	__be32 new_addr;
	int err;

	err = FUNC5(skb, FUNC6(skb) +
				  sizeof(struct iphdr));
	if (FUNC7(err))
		return err;

	nh = FUNC1(skb);

	/* Setting an IP addresses is typically only a side effect of
	 * matching on them in the current userspace implementation, so it
	 * makes sense to check if the value actually changed.
	 */
	if (mask->ipv4_src) {
		new_addr = FUNC0(nh->saddr, key->ipv4_src, mask->ipv4_src);

		if (FUNC7(new_addr != nh->saddr)) {
			FUNC3(skb, nh, &nh->saddr, new_addr);
			flow_key->ipv4.addr.src = new_addr;
		}
	}
	if (mask->ipv4_dst) {
		new_addr = FUNC0(nh->daddr, key->ipv4_dst, mask->ipv4_dst);

		if (FUNC7(new_addr != nh->daddr)) {
			FUNC3(skb, nh, &nh->daddr, new_addr);
			flow_key->ipv4.addr.dst = new_addr;
		}
	}
	if (mask->ipv4_tos) {
		FUNC2(nh, ~mask->ipv4_tos, key->ipv4_tos);
		flow_key->ip.tos = nh->tos;
	}
	if (mask->ipv4_ttl) {
		FUNC4(skb, nh, key->ipv4_ttl, mask->ipv4_ttl);
		flow_key->ip.ttl = nh->ttl;
	}

	return 0;
}
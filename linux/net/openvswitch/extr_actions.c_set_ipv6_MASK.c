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
struct TYPE_6__ {int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; int /*<<< orphan*/  proto; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_5__ {int label; TYPE_1__ addr; } ;
struct sw_flow_key {TYPE_3__ ip; TYPE_2__ ipv6; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_ipv6 {int ipv6_tclass; int /*<<< orphan*/  ipv6_hlimit; scalar_t__ ipv6_label; int /*<<< orphan*/  ipv6_dst; int /*<<< orphan*/  ipv6_src; } ;
struct ipv6hdr {int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  masked ;
typedef  int __be32 ;

/* Variables and functions */
 int IP6_FH_F_SKIP_RH ; 
 int /*<<< orphan*/  IPV6_FLOWINFO_FLOWLABEL ; 
 scalar_t__ NEXTHDR_ROUTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipv6hdr*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,unsigned int*,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipv6hdr*) ; 
 struct ipv6hdr* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ipv6hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct sw_flow_key *flow_key,
		    const struct ovs_key_ipv6 *key,
		    const struct ovs_key_ipv6 *mask)
{
	struct ipv6hdr *nh;
	int err;

	err = FUNC14(skb, FUNC15(skb) +
				  sizeof(struct ipv6hdr));
	if (FUNC16(err))
		return err;

	nh = FUNC6(skb);

	/* Setting an IP addresses is typically only a side effect of
	 * matching on them in the current userspace implementation, so it
	 * makes sense to check if the value actually changed.
	 */
	if (FUNC7(mask->ipv6_src)) {
		__be32 *saddr = (__be32 *)&nh->saddr;
		__be32 masked[4];

		FUNC8(saddr, key->ipv6_src, mask->ipv6_src, masked);

		if (FUNC16(FUNC9(saddr, masked, sizeof(masked)))) {
			FUNC12(skb, flow_key->ip.proto, saddr, masked,
				      true);
			FUNC10(&flow_key->ipv6.addr.src, masked,
			       sizeof(flow_key->ipv6.addr.src));
		}
	}
	if (FUNC7(mask->ipv6_dst)) {
		unsigned int offset = 0;
		int flags = IP6_FH_F_SKIP_RH;
		bool recalc_csum = true;
		__be32 *daddr = (__be32 *)&nh->daddr;
		__be32 masked[4];

		FUNC8(daddr, key->ipv6_dst, mask->ipv6_dst, masked);

		if (FUNC16(FUNC9(daddr, masked, sizeof(masked)))) {
			if (FUNC3(nh->nexthdr))
				recalc_csum = (FUNC4(skb, &offset,
							     NEXTHDR_ROUTING,
							     NULL, &flags)
					       != NEXTHDR_ROUTING);

			FUNC12(skb, flow_key->ip.proto, daddr, masked,
				      recalc_csum);
			FUNC10(&flow_key->ipv6.addr.dst, masked,
			       sizeof(flow_key->ipv6.addr.dst));
		}
	}
	if (mask->ipv6_tclass) {
		FUNC2(nh, ~mask->ipv6_tclass, key->ipv6_tclass);
		flow_key->ip.tos = FUNC5(nh);
	}
	if (mask->ipv6_label) {
		FUNC13(nh, FUNC11(key->ipv6_label),
			    FUNC11(mask->ipv6_label));
		flow_key->ipv6.label =
		    *(__be32 *)nh & FUNC1(IPV6_FLOWINFO_FLOWLABEL);
	}
	if (mask->ipv6_hlimit) {
		FUNC0(nh->hop_limit, key->ipv6_hlimit,
			       mask->ipv6_hlimit);
		flow_key->ip.ttl = nh->hop_limit;
	}
	return 0;
}
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
typedef  scalar_t__ u8 ;
struct tnl_ptk_info {int /*<<< orphan*/  proto; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct metadata_dst {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_2__ {scalar_t__ collect_md; int /*<<< orphan*/  proto; } ;
struct ip6_tnl {TYPE_1__ parms; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int FUNC1 (struct ip6_tnl*,struct sk_buff*,struct tnl_ptk_info const*,struct metadata_dst*,int (*) (struct ip6_tnl const*,struct ipv6hdr const*,struct sk_buff*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ip6_tnl*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ipv6hdr* FUNC6 (struct sk_buff*) ; 
 struct metadata_dst* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  log_ecn_error ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, u8 ipproto,
		      const struct tnl_ptk_info *tpi,
		      int (*dscp_ecn_decapsulate)(const struct ip6_tnl *t,
						  const struct ipv6hdr *ipv6h,
						  struct sk_buff *skb))
{
	struct ip6_tnl *t;
	const struct ipv6hdr *ipv6h = FUNC6(skb);
	struct metadata_dst *tun_dst = NULL;
	int ret = -1;

	FUNC9();
	t = FUNC3(FUNC2(skb->dev), &ipv6h->saddr, &ipv6h->daddr);

	if (t) {
		u8 tproto = FUNC0(t->parms.proto);

		if (tproto != ipproto && tproto != 0)
			goto drop;
		if (!FUNC11(NULL, XFRM_POLICY_IN, skb))
			goto drop;
		ipv6h = FUNC6(skb);
		if (!FUNC4(t, &ipv6h->daddr, &ipv6h->saddr))
			goto drop;
		if (FUNC5(skb, 0, tpi->proto, false))
			goto drop;
		if (t->parms.collect_md) {
			tun_dst = FUNC7(skb, 0, 0, 0);
			if (!tun_dst)
				goto drop;
		}
		ret = FUNC1(t, skb, tpi, tun_dst, dscp_ecn_decapsulate,
				    log_ecn_error);
	}

	FUNC10();

	return ret;

drop:
	FUNC10();
	FUNC8(skb);
	return 0;
}
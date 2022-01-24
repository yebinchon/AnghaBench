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
struct tcphdr {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sysctl_ip_default_ttl; } ;
struct net {TYPE_1__ ipv4; } ;
struct iphdr {int /*<<< orphan*/  tot_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 scalar_t__ LL_MAX_HEADER ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iphdr*) ; 
 struct tcphdr* FUNC5 (struct sk_buff*,struct tcphdr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sk_buff*,struct tcphdr const*) ; 
 struct iphdr* FUNC7 (struct sk_buff*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct net *net,
					    struct sk_buff *oldskb,
					    const struct net_device *dev,
					    int hook)
{
	struct sk_buff *nskb;
	struct iphdr *niph;
	const struct tcphdr *oth;
	struct tcphdr _oth;

	if (!FUNC8(oldskb))
		return;

	oth = FUNC5(oldskb, &_oth, hook);
	if (!oth)
		return;

	nskb = FUNC0(sizeof(struct iphdr) + sizeof(struct tcphdr) +
			 LL_MAX_HEADER, GFP_ATOMIC);
	if (!nskb)
		return;

	FUNC10(nskb, LL_MAX_HEADER);
	niph = FUNC7(nskb, oldskb, IPPROTO_TCP,
				   net->ipv4.sysctl_ip_default_ttl);
	FUNC6(nskb, oldskb, oth);
	niph->tot_len = FUNC3(nskb->len);
	FUNC4(niph);

	FUNC9(oldskb, nskb);

	FUNC1(FUNC2(dev), nskb, false, true);
}
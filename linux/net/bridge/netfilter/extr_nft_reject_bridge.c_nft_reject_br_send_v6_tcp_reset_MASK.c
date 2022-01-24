#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6hdr {int /*<<< orphan*/  payload_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  hop_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 scalar_t__ LL_MAX_HEADER ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct tcphdr* FUNC4 (struct sk_buff*,struct tcphdr*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sk_buff*,struct tcphdr const*,unsigned int) ; 
 struct ipv6hdr* FUNC6 (struct sk_buff*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct net *net,
					    struct sk_buff *oldskb,
					    const struct net_device *dev,
					    int hook)
{
	struct sk_buff *nskb;
	const struct tcphdr *oth;
	struct tcphdr _oth;
	unsigned int otcplen;
	struct ipv6hdr *nip6h;

	if (!FUNC7(oldskb))
		return;

	oth = FUNC4(oldskb, &_oth, &otcplen, hook);
	if (!oth)
		return;

	nskb = FUNC0(sizeof(struct ipv6hdr) + sizeof(struct tcphdr) +
			 LL_MAX_HEADER, GFP_ATOMIC);
	if (!nskb)
		return;

	FUNC9(nskb, LL_MAX_HEADER);
	nip6h = FUNC6(nskb, oldskb, IPPROTO_TCP,
				     net->ipv6.devconf_all->hop_limit);
	FUNC5(nskb, oldskb, oth, otcplen);
	nip6h->payload_len = FUNC3(nskb->len - sizeof(struct ipv6hdr));

	FUNC8(oldskb, nskb);

	FUNC1(FUNC2(dev), nskb, false, true);
}
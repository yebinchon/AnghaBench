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
struct iphdr {int ihl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_options {int optlen; int /*<<< orphan*/  srr; } ;
struct in_device {int dummy; } ;
struct TYPE_2__ {struct ip_options opt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct in_device*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_INDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct in_device* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct ip_options*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC13(struct sk_buff *skb, struct net_device *dev)
{
	struct ip_options *opt;
	const struct iphdr *iph;

	/* It looks as overkill, because not all
	   IP options require packet mangling.
	   But it is the easiest for now, especially taking
	   into account that combination of IP options
	   and running sniffer is extremely rare condition.
					      --ANK (980813)
	*/
	if (FUNC10(skb, FUNC11(skb))) {
		FUNC3(FUNC5(dev), IPSTATS_MIB_INDISCARDS);
		goto drop;
	}

	iph = FUNC6(skb);
	opt = &(FUNC2(skb)->opt);
	opt->optlen = iph->ihl*4 - sizeof(struct iphdr);

	if (FUNC7(FUNC5(dev), opt, skb)) {
		FUNC3(FUNC5(dev), IPSTATS_MIB_INHDRERRORS);
		goto drop;
	}

	if (FUNC12(opt->srr)) {
		struct in_device *in_dev = FUNC4(dev);

		if (in_dev) {
			if (!FUNC1(in_dev)) {
				if (FUNC0(in_dev))
					FUNC9("source route option %pI4 -> %pI4\n",
							     &iph->saddr,
							     &iph->daddr);
				goto drop;
			}
		}

		if (FUNC8(skb, dev))
			goto drop;
	}

	return false;
drop:
	return true;
}
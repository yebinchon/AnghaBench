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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {void* ip; } ;
struct nf_nat_range2 {int flags; int /*<<< orphan*/  max_proto; int /*<<< orphan*/  min_proto; TYPE_2__ max_addr; TYPE_2__ min_addr; } ;
struct nf_nat_ipv4_multi_range_compat {TYPE_1__* range; } ;
struct nf_conn {int dummy; } ;
struct in_ifaddr {void* ifa_local; } ;
struct in_device {int /*<<< orphan*/  ifa_list; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  void* __be32 ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int IP_CT_NEW ; 
 int IP_CT_RELATED ; 
 unsigned int NF_DROP ; 
 unsigned int NF_INET_LOCAL_OUT ; 
 unsigned int NF_INET_PRE_ROUTING ; 
 int /*<<< orphan*/  NF_NAT_MANIP_DST ; 
 int NF_NAT_RANGE_MAP_IPS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct in_device* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct nf_conn* FUNC4 (struct sk_buff*,int*) ; 
 unsigned int FUNC5 (struct nf_conn*,struct nf_nat_range2*,int /*<<< orphan*/ ) ; 
 struct in_ifaddr* FUNC6 (int /*<<< orphan*/ ) ; 

unsigned int
FUNC7(struct sk_buff *skb,
		     const struct nf_nat_ipv4_multi_range_compat *mr,
		     unsigned int hooknum)
{
	struct nf_conn *ct;
	enum ip_conntrack_info ctinfo;
	__be32 newdst;
	struct nf_nat_range2 newrange;

	FUNC0(hooknum != NF_INET_PRE_ROUTING &&
		hooknum != NF_INET_LOCAL_OUT);

	ct = FUNC4(skb, &ctinfo);
	FUNC0(!(ct && (ctinfo == IP_CT_NEW || ctinfo == IP_CT_RELATED)));

	/* Local packets: make them go to loopback */
	if (hooknum == NF_INET_LOCAL_OUT) {
		newdst = FUNC2(0x7F000001);
	} else {
		const struct in_device *indev;

		newdst = 0;

		indev = FUNC1(skb->dev);
		if (indev) {
			const struct in_ifaddr *ifa;

			ifa = FUNC6(indev->ifa_list);
			if (ifa)
				newdst = ifa->ifa_local;
		}

		if (!newdst)
			return NF_DROP;
	}

	/* Transfer from original range. */
	FUNC3(&newrange.min_addr, 0, sizeof(newrange.min_addr));
	FUNC3(&newrange.max_addr, 0, sizeof(newrange.max_addr));
	newrange.flags	     = mr->range[0].flags | NF_NAT_RANGE_MAP_IPS;
	newrange.min_addr.ip = newdst;
	newrange.max_addr.ip = newdst;
	newrange.min_proto   = mr->range[0].min;
	newrange.max_proto   = mr->range[0].max;

	/* Hand modified range to generic setup. */
	return FUNC5(ct, &newrange, NF_NAT_MANIP_DST);
}
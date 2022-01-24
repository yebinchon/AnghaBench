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
struct TYPE_4__ {int ip; } ;
struct TYPE_3__ {int ip; } ;
struct xt_hmark_info {int flags; TYPE_2__ dst_mask; TYPE_1__ src_mask; } ;
struct sk_buff {scalar_t__ data; } ;
struct iphdr {scalar_t__ protocol; int ihl; int saddr; int daddr; int frag_off; } ;
struct hmark_tuple {int src; int dst; scalar_t__ proto; } ;
typedef  int /*<<< orphan*/  _ip ;

/* Variables and functions */
 scalar_t__ IPPROTO_ICMP ; 
 int IP_MF ; 
 int IP_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XT_HMARK_METHOD_L3 ; 
 scalar_t__ FUNC1 (struct sk_buff const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*,int,struct hmark_tuple*,struct xt_hmark_info const*) ; 
 int FUNC3 (int) ; 
 struct iphdr* FUNC4 (struct sk_buff const*,int,int,struct iphdr*) ; 
 int FUNC5 (struct sk_buff const*) ; 

__attribute__((used)) static int
FUNC6(const struct sk_buff *skb, struct hmark_tuple *t,
			  const struct xt_hmark_info *info)
{
	struct iphdr *ip, _ip;
	int nhoff = FUNC5(skb);

	ip = (struct iphdr *) (skb->data + nhoff);
	if (ip->protocol == IPPROTO_ICMP) {
		/* Use inner header in case of ICMP errors */
		if (FUNC1(skb, ip->ihl * 4, &nhoff)) {
			ip = FUNC4(skb, nhoff, sizeof(_ip), &_ip);
			if (ip == NULL)
				return -1;
		}
	}

	t->src = ip->saddr & info->src_mask.ip;
	t->dst = ip->daddr & info->dst_mask.ip;

	if (info->flags & FUNC0(XT_HMARK_METHOD_L3))
		return 0;

	t->proto = ip->protocol;

	/* ICMP has no ports, skip */
	if (t->proto == IPPROTO_ICMP)
		return 0;

	/* follow-up fragments don't contain ports, skip all fragments */
	if (ip->frag_off & FUNC3(IP_MF | IP_OFFSET))
		return 0;

	FUNC2(skb, (ip->ihl * 4) + nhoff, t, info);

	return 0;
}
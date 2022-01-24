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
struct sk_buff {scalar_t__ mark; } ;
struct TYPE_2__ {scalar_t__ hook; int /*<<< orphan*/  net; } ;
struct nf_queue_entry {TYPE_1__ state; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ip6_rt_info {scalar_t__ mark; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 scalar_t__ NF_INET_LOCAL_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 struct ip6_rt_info* FUNC3 (struct nf_queue_entry const*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
			  const struct nf_queue_entry *entry)
{
	struct ip6_rt_info *rt_info = FUNC3(entry);

	if (entry->state.hook == NF_INET_LOCAL_OUT) {
		const struct ipv6hdr *iph = FUNC2(skb);
		if (!FUNC1(&iph->daddr, &rt_info->daddr) ||
		    !FUNC1(&iph->saddr, &rt_info->saddr) ||
		    skb->mark != rt_info->mark)
			return FUNC0(entry->state.net, skb);
	}
	return 0;
}
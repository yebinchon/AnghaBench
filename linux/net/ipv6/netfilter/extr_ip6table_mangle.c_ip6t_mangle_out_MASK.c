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
typedef  scalar_t__ u_int8_t ;
typedef  scalar_t__ u_int32_t ;
struct sk_buff {scalar_t__ mark; } ;
struct nf_hook_state {TYPE_3__* net; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  saddr ;
typedef  int /*<<< orphan*/  daddr ;
struct TYPE_4__ {int /*<<< orphan*/  ip6table_mangle; } ;
struct TYPE_6__ {TYPE_1__ ipv6; } ;
struct TYPE_5__ {scalar_t__ hop_limit; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 unsigned int NF_DROP ; 
 unsigned int FUNC0 (int) ; 
 unsigned int NF_STOLEN ; 
 int FUNC1 (TYPE_3__*,struct sk_buff*) ; 
 unsigned int FUNC2 (struct sk_buff*,struct nf_hook_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addr*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static unsigned int
FUNC6(struct sk_buff *skb, const struct nf_hook_state *state)
{
	unsigned int ret;
	struct in6_addr saddr, daddr;
	u_int8_t hop_limit;
	u_int32_t flowlabel, mark;
	int err;

	/* save source/dest address, mark, hoplimit, flowlabel, priority,  */
	FUNC5(&saddr, &FUNC4(skb)->saddr, sizeof(saddr));
	FUNC5(&daddr, &FUNC4(skb)->daddr, sizeof(daddr));
	mark = skb->mark;
	hop_limit = FUNC4(skb)->hop_limit;

	/* flowlabel and prio (includes version, which shouldn't change either */
	flowlabel = *((u_int32_t *)FUNC4(skb));

	ret = FUNC2(skb, state, state->net->ipv6.ip6table_mangle);

	if (ret != NF_DROP && ret != NF_STOLEN &&
	    (!FUNC3(&FUNC4(skb)->saddr, &saddr) ||
	     !FUNC3(&FUNC4(skb)->daddr, &daddr) ||
	     skb->mark != mark ||
	     FUNC4(skb)->hop_limit != hop_limit ||
	     flowlabel != *((u_int32_t *)FUNC4(skb)))) {
		err = FUNC1(state->net, skb);
		if (err < 0)
			ret = FUNC0(err);
	}

	return ret;
}
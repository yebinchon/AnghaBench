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
struct nf_hook_state {int /*<<< orphan*/  hook; int /*<<< orphan*/  net; } ;
struct netns_ipvs {int /*<<< orphan*/  enable; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_ICMP ; 
 unsigned int NF_ACCEPT ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (struct netns_ipvs*,struct sk_buff*,int*,int /*<<< orphan*/ ) ; 
 struct netns_ipvs* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct netns_ipvs*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static unsigned int
FUNC5(void *priv, struct sk_buff *skb,
		   const struct nf_hook_state *state)
{
	int r;
	struct netns_ipvs *ipvs = FUNC2(state->net);

	if (FUNC0(skb)->protocol != IPPROTO_ICMP)
		return NF_ACCEPT;

	/* ipvs enabled in this netns ? */
	if (FUNC4(FUNC3(ipvs) || !ipvs->enable))
		return NF_ACCEPT;

	return FUNC1(ipvs, skb, &r, state->hook);
}
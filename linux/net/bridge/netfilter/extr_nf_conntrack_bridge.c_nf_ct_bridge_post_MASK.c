#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;

/* Variables and functions */
 int NF_ACCEPT ; 
 int FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (struct sk_buff*,struct nf_hook_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_ct_bridge_refrag_post ; 

__attribute__((used)) static unsigned int FUNC2(void *priv, struct sk_buff *skb,
				      const struct nf_hook_state *state)
{
	int ret;

	ret = FUNC0(skb);
	if (ret != NF_ACCEPT)
		return ret;

	return FUNC1(skb, state, nf_ct_bridge_refrag_post);
}
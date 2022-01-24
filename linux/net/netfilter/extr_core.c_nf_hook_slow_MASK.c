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
struct nf_hook_entries {unsigned int num_hook_entries; int /*<<< orphan*/ * hooks; } ;

/* Variables and functions */
 int EPERM ; 
#define  NF_ACCEPT 130 
#define  NF_DROP 129 
 int FUNC0 (unsigned int) ; 
#define  NF_QUEUE 128 
 unsigned int NF_VERDICT_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,struct sk_buff*,struct nf_hook_state*) ; 
 int FUNC3 (struct sk_buff*,struct nf_hook_state*,unsigned int,unsigned int) ; 

int FUNC4(struct sk_buff *skb, struct nf_hook_state *state,
		 const struct nf_hook_entries *e, unsigned int s)
{
	unsigned int verdict;
	int ret;

	for (; s < e->num_hook_entries; s++) {
		verdict = FUNC2(&e->hooks[s], skb, state);
		switch (verdict & NF_VERDICT_MASK) {
		case NF_ACCEPT:
			break;
		case NF_DROP:
			FUNC1(skb);
			ret = FUNC0(verdict);
			if (ret == 0)
				ret = -EPERM;
			return ret;
		case NF_QUEUE:
			ret = FUNC3(skb, state, s, verdict);
			if (ret == 1)
				continue;
			return ret;
		default:
			/* Implicit handling for NF_STOLEN, as well as any other
			 * non conventional verdicts.
			 */
			return 0;
		}
	}

	return 1;
}
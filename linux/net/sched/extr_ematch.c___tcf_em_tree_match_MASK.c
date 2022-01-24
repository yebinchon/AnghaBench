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
struct tcf_pkt_info {int dummy; } ;
struct TYPE_2__ {int nmatches; } ;
struct tcf_ematch_tree {TYPE_1__ hdr; } ;
struct tcf_ematch {int data; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int CONFIG_NET_EMATCH_STACK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct tcf_ematch*,int) ; 
 struct tcf_ematch* FUNC2 (struct tcf_ematch_tree*,int) ; 
 scalar_t__ FUNC3 (struct tcf_ematch*) ; 
 scalar_t__ FUNC4 (struct tcf_ematch*) ; 
 int FUNC5 (struct sk_buff*,struct tcf_ematch*,struct tcf_pkt_info*) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct sk_buff *skb, struct tcf_ematch_tree *tree,
			struct tcf_pkt_info *info)
{
	int stackp = 0, match_idx = 0, res = 0;
	struct tcf_ematch *cur_match;
	int stack[CONFIG_NET_EMATCH_STACK];

proceed:
	while (match_idx < tree->hdr.nmatches) {
		cur_match = FUNC2(tree, match_idx);

		if (FUNC3(cur_match)) {
			if (FUNC6(stackp >= CONFIG_NET_EMATCH_STACK))
				goto stack_overflow;

			stack[stackp++] = match_idx;
			match_idx = cur_match->data;
			goto proceed;
		}

		res = FUNC5(skb, cur_match, info);

		if (FUNC1(cur_match, res))
			break;

		match_idx++;
	}

pop_stack:
	if (stackp > 0) {
		match_idx = stack[--stackp];
		cur_match = FUNC2(tree, match_idx);

		if (FUNC4(cur_match))
			res = !res;

		if (FUNC1(cur_match, res)) {
			goto pop_stack;
		} else {
			match_idx++;
			goto proceed;
		}
	}

	return res;

stack_overflow:
	FUNC0("tc ematch: local stack overflow, increase NET_EMATCH_STACK\n");
	return -1;
}
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
struct tc_cbq_wrropt {int /*<<< orphan*/  weight; scalar_t__ cpriority; scalar_t__ priority; int /*<<< orphan*/  allot; scalar_t__ flags; } ;
struct sk_buff {int len; } ;
struct cbq_class {int /*<<< orphan*/  weight; scalar_t__ cpriority; scalar_t__ priority; int /*<<< orphan*/  allot; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_CBQ_WRROPT ; 
 int /*<<< orphan*/  FUNC0 (struct tc_cbq_wrropt*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_cbq_wrropt*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct cbq_class *cl)
{
	unsigned char *b = FUNC3(skb);
	struct tc_cbq_wrropt opt;

	FUNC0(&opt, 0, sizeof(opt));
	opt.flags = 0;
	opt.allot = cl->allot;
	opt.priority = cl->priority + 1;
	opt.cpriority = cl->cpriority + 1;
	opt.weight = cl->weight;
	if (FUNC1(skb, TCA_CBQ_WRROPT, sizeof(opt), &opt))
		goto nla_put_failure;
	return skb->len;

nla_put_failure:
	FUNC2(skb, b);
	return -1;
}
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
struct xt_hmark_info {int flags; } ;
struct xt_action_param {struct xt_hmark_info* targinfo; } ;
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct hmark_tuple {int dummy; } ;

/* Variables and functions */
 unsigned int XT_CONTINUE ; 
 int /*<<< orphan*/  XT_HMARK_CT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct hmark_tuple*,struct xt_hmark_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct hmark_tuple*,struct xt_hmark_info const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct hmark_tuple*,struct xt_hmark_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct hmark_tuple*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int
FUNC5(struct sk_buff *skb, const struct xt_action_param *par)
{
	const struct xt_hmark_info *info = par->targinfo;
	struct hmark_tuple t;

	FUNC4(&t, 0, sizeof(struct hmark_tuple));

	if (info->flags & FUNC0(XT_HMARK_CT)) {
		if (FUNC1(skb, &t, info) < 0)
			return XT_CONTINUE;
	} else {
		if (FUNC3(skb, &t, info) < 0)
			return XT_CONTINUE;
	}

	skb->mark = FUNC2(&t, info);
	return XT_CONTINUE;
}
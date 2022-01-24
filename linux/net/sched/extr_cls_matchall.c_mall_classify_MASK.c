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
struct tcf_result {int dummy; } ;
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct sk_buff {int dummy; } ;
struct cls_mall_head {int /*<<< orphan*/  exts; TYPE_1__* pf; struct tcf_result res; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  rhit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cls_mall_head* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ *,struct tcf_result*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, const struct tcf_proto *tp,
			 struct tcf_result *res)
{
	struct cls_mall_head *head = FUNC1(tp->root);

	if (FUNC4(!head))
		return -1;

	if (FUNC2(head->flags))
		return -1;

	*res = head->res;
	FUNC0(head->pf->rhit);
	return FUNC3(skb, &head->exts, res);
}
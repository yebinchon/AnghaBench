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
typedef  scalar_t__ u32 ;
struct tcf_result {scalar_t__ class; scalar_t__ classid; } ;
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct sk_buff {int dummy; } ;
struct cls_cgroup_head {int /*<<< orphan*/  exts; int /*<<< orphan*/  ematches; } ;

/* Variables and functions */
 struct cls_cgroup_head* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ *,struct tcf_result*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, const struct tcf_proto *tp,
			       struct tcf_result *res)
{
	struct cls_cgroup_head *head = FUNC0(tp->root);
	u32 classid = FUNC1(skb);

	if (FUNC4(!head))
		return -1;
	if (!classid)
		return -1;
	if (!FUNC2(skb, &head->ematches, NULL))
		return -1;

	res->classid = classid;
	res->class = 0;

	return FUNC3(skb, &head->exts, res);
}
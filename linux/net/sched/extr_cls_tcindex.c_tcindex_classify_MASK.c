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
struct tcf_result {int /*<<< orphan*/  classid; scalar_t__ class; } ;
struct tcindex_filter_result {int /*<<< orphan*/  exts; struct tcf_result res; } ;
struct tcindex_data {int mask; int shift; int /*<<< orphan*/  fall_through; } ;
struct tcf_proto {TYPE_1__* chain; int /*<<< orphan*/  root; } ;
struct sk_buff {int tc_index; } ;
struct Qdisc {int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sk_buff*,...) ; 
 struct tcindex_data* FUNC3 (int /*<<< orphan*/ ) ; 
 struct Qdisc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,struct tcf_result*) ; 
 struct tcindex_filter_result* FUNC6 (struct tcindex_data*,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, const struct tcf_proto *tp,
			    struct tcf_result *res)
{
	struct tcindex_data *p = FUNC3(tp->root);
	struct tcindex_filter_result *f;
	int key = (skb->tc_index & p->mask) >> p->shift;

	FUNC2("tcindex_classify(skb %p,tp %p,res %p),p %p\n",
		 skb, tp, res, p);

	f = FUNC6(p, key);
	if (!f) {
		struct Qdisc *q = FUNC4(tp->chain->block);

		if (!p->fall_through)
			return -1;
		res->classid = FUNC1(FUNC0(q->handle), key);
		res->class = 0;
		FUNC2("alg 0x%x\n", res->classid);
		return 0;
	}
	*res = f->res;
	FUNC2("map 0x%x\n", res->classid);

	return FUNC5(skb, &f->exts, res);
}
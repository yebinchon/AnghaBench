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
typedef  int u32 ;
struct tcf_result {int classid; scalar_t__ class; } ;
struct tcf_proto {TYPE_1__* chain; int /*<<< orphan*/  root; } ;
struct sk_buff {int mark; } ;
struct fw_head {int mask; int /*<<< orphan*/ * ht; } ;
struct fw_filter {int id; int /*<<< orphan*/  exts; int /*<<< orphan*/  ifindex; struct tcf_result res; int /*<<< orphan*/  next; } ;
struct Qdisc {int handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  block; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct Qdisc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ *,struct tcf_result*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, const struct tcf_proto *tp,
		       struct tcf_result *res)
{
	struct fw_head *head = FUNC2(tp->root);
	struct fw_filter *f;
	int r;
	u32 id = skb->mark;

	if (head != NULL) {
		id &= head->mask;

		for (f = FUNC2(head->ht[FUNC1(id)]); f;
		     f = FUNC2(f->next)) {
			if (f->id == id) {
				*res = f->res;
				if (!FUNC5(skb, f->ifindex))
					continue;
				r = FUNC4(skb, &f->exts, res);
				if (r < 0)
					continue;

				return r;
			}
		}
	} else {
		struct Qdisc *q = FUNC3(tp->chain->block);

		/* Old method: classify the packet using its skb mark. */
		if (id && (FUNC0(id) == 0 ||
			   !(FUNC0(id ^ q->handle)))) {
			res->classid = id;
			res->class = 0;
			return 0;
		}
	}

	return -1;
}
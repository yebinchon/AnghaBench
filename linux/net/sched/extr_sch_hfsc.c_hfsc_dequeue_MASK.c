#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct hfsc_sched {int /*<<< orphan*/  root; } ;
struct hfsc_class {int cl_flags; TYPE_3__* qdisc; int /*<<< orphan*/  cl_cumul; int /*<<< orphan*/  bstats; } ;
struct TYPE_7__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct TYPE_8__ {TYPE_1__ q; } ;

/* Variables and functions */
 int HFSC_RSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct hfsc_class* FUNC1 (struct hfsc_sched*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfsc_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (TYPE_3__*) ; 
 unsigned int FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 struct hfsc_sched* FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (struct hfsc_class*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct hfsc_class*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct hfsc_class*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct hfsc_class* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC17(struct Qdisc *sch)
{
	struct hfsc_sched *q = FUNC9(sch);
	struct hfsc_class *cl;
	struct sk_buff *skb;
	u64 cur_time;
	unsigned int next_len;
	int realtime = 0;

	if (sch->q.qlen == 0)
		return NULL;

	cur_time = FUNC4();

	/*
	 * if there are eligible classes, use real-time criteria.
	 * find the class with the minimum deadline among
	 * the eligible classes.
	 */
	cl = FUNC1(q, cur_time);
	if (cl) {
		realtime = 1;
	} else {
		/*
		 * use link-sharing criteria
		 * get the class with the minimum vt in the hierarchy
		 */
		cl = FUNC16(&q->root, cur_time);
		if (cl == NULL) {
			FUNC11(sch);
			FUNC3(sch);
			return NULL;
		}
	}

	skb = FUNC6(cl->qdisc);
	if (skb == NULL) {
		FUNC12("HFSC", cl->qdisc);
		return NULL;
	}

	FUNC0(&cl->bstats, skb);
	FUNC15(cl, FUNC8(skb), cur_time);
	if (realtime)
		cl->cl_cumul += FUNC8(skb);

	if (cl->cl_flags & HFSC_RSC) {
		if (cl->qdisc->q.qlen != 0) {
			/* update ed */
			next_len = FUNC7(cl->qdisc);
			if (realtime)
				FUNC14(cl, next_len);
			else
				FUNC13(cl, next_len);
		} else {
			/* the class becomes passive */
			FUNC2(cl);
		}
	}

	FUNC5(sch, skb);
	FUNC10(sch, skb);
	sch->q.qlen--;

	return skb;
}
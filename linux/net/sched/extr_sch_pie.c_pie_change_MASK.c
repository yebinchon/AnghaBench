#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  void* u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {void* bytemode; void* ecn; void* beta; void* alpha; void* limit; int /*<<< orphan*/  tupdate; int /*<<< orphan*/  target; } ;
struct pie_sched_data {TYPE_1__ params; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {unsigned int qlen; } ;
struct Qdisc {unsigned int limit; TYPE_2__ q; } ;

/* Variables and functions */
 int EINVAL ; 
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t TCA_PIE_ALPHA ; 
 size_t TCA_PIE_BETA ; 
 size_t TCA_PIE_BYTEMODE ; 
 size_t TCA_PIE_ECN ; 
 size_t TCA_PIE_LIMIT ; 
 int /*<<< orphan*/  TCA_PIE_MAX ; 
 size_t TCA_PIE_TARGET ; 
 size_t TCA_PIE_TUPDATE ; 
 struct sk_buff* FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pie_policy ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 struct pie_sched_data* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 

__attribute__((used)) static int FUNC12(struct Qdisc *sch, struct nlattr *opt,
		      struct netlink_ext_ack *extack)
{
	struct pie_sched_data *q = FUNC5(sch);
	struct nlattr *tb[TCA_PIE_MAX + 1];
	unsigned int qlen, dropped = 0;
	int err;

	if (!opt)
		return -EINVAL;

	err = FUNC3(tb, TCA_PIE_MAX, opt, pie_policy,
					  NULL);
	if (err < 0)
		return err;

	FUNC9(sch);

	/* convert from microseconds to pschedtime */
	if (tb[TCA_PIE_TARGET]) {
		/* target is in us */
		u32 target = FUNC2(tb[TCA_PIE_TARGET]);

		/* convert to pschedtime */
		q->params.target = FUNC0((u64)target * NSEC_PER_USEC);
	}

	/* tupdate is in jiffies */
	if (tb[TCA_PIE_TUPDATE])
		q->params.tupdate =
			FUNC11(FUNC2(tb[TCA_PIE_TUPDATE]));

	if (tb[TCA_PIE_LIMIT]) {
		u32 limit = FUNC2(tb[TCA_PIE_LIMIT]);

		q->params.limit = limit;
		sch->limit = limit;
	}

	if (tb[TCA_PIE_ALPHA])
		q->params.alpha = FUNC2(tb[TCA_PIE_ALPHA]);

	if (tb[TCA_PIE_BETA])
		q->params.beta = FUNC2(tb[TCA_PIE_BETA]);

	if (tb[TCA_PIE_ECN])
		q->params.ecn = FUNC2(tb[TCA_PIE_ECN]);

	if (tb[TCA_PIE_BYTEMODE])
		q->params.bytemode = FUNC2(tb[TCA_PIE_BYTEMODE]);

	/* Drop excess packets if new limit is lower */
	qlen = sch->q.qlen;
	while (sch->q.qlen > sch->limit) {
		struct sk_buff *skb = FUNC1(&sch->q);

		dropped += FUNC4(skb);
		FUNC6(sch, skb);
		FUNC8(skb, sch);
	}
	FUNC7(sch, qlen - sch->q.qlen, dropped);

	FUNC10(sch);
	return 0;
}
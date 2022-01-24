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
typedef  int /*<<< orphan*/  u32 ;
struct tc_red_qopt {scalar_t__ limit; int /*<<< orphan*/  Scell_log; int /*<<< orphan*/  Plog; int /*<<< orphan*/  Wlog; int /*<<< orphan*/  qth_max; int /*<<< orphan*/  qth_min; int /*<<< orphan*/  flags; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct choke_sched_data {unsigned int tab_mask; size_t head; size_t tail; scalar_t__ limit; int /*<<< orphan*/  vars; int /*<<< orphan*/  parms; int /*<<< orphan*/  flags; struct sk_buff** tab; } ;
struct TYPE_2__ {unsigned int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 scalar_t__ CHOKE_MAX_QUEUE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  TCA_CHOKE_MAX ; 
 size_t TCA_CHOKE_MAX_P ; 
 size_t TCA_CHOKE_PARMS ; 
 size_t TCA_CHOKE_STAB ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff**) ; 
 int /*<<< orphan*/  choke_policy ; 
 struct sk_buff** FUNC1 (unsigned int,int,int) ; 
 struct tc_red_qopt* FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 struct choke_sched_data* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tc_red_qopt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC15 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC16 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC17(struct Qdisc *sch, struct nlattr *opt,
			struct netlink_ext_ack *extack)
{
	struct choke_sched_data *q = FUNC6(sch);
	struct nlattr *tb[TCA_CHOKE_MAX + 1];
	const struct tc_red_qopt *ctl;
	int err;
	struct sk_buff **old = NULL;
	unsigned int mask;
	u32 max_P;

	if (opt == NULL)
		return -EINVAL;

	err = FUNC4(tb, TCA_CHOKE_MAX, opt,
					  choke_policy, NULL);
	if (err < 0)
		return err;

	if (tb[TCA_CHOKE_PARMS] == NULL ||
	    tb[TCA_CHOKE_STAB] == NULL)
		return -EINVAL;

	max_P = tb[TCA_CHOKE_MAX_P] ? FUNC3(tb[TCA_CHOKE_MAX_P]) : 0;

	ctl = FUNC2(tb[TCA_CHOKE_PARMS]);

	if (!FUNC9(ctl->qth_min, ctl->qth_max, ctl->Wlog))
		return -EINVAL;

	if (ctl->limit > CHOKE_MAX_QUEUE)
		return -EINVAL;

	mask = FUNC13(ctl->limit + 1) - 1;
	if (mask != q->tab_mask) {
		struct sk_buff **ntab;

		ntab = FUNC1((mask + 1), sizeof(struct sk_buff *), GFP_KERNEL | __GFP_ZERO);
		if (!ntab)
			return -ENOMEM;

		FUNC15(sch);
		old = q->tab;
		if (old) {
			unsigned int oqlen = sch->q.qlen, tail = 0;
			unsigned dropped = 0;

			while (q->head != q->tail) {
				struct sk_buff *skb = q->tab[q->head];

				q->head = (q->head + 1) & q->tab_mask;
				if (!skb)
					continue;
				if (tail < mask) {
					ntab[tail++] = skb;
					continue;
				}
				dropped += FUNC5(skb);
				FUNC7(sch, skb);
				--sch->q.qlen;
				FUNC14(skb, sch);
			}
			FUNC8(sch, oqlen - sch->q.qlen, dropped);
			q->head = 0;
			q->tail = tail;
		}

		q->tab_mask = mask;
		q->tab = ntab;
	} else
		FUNC15(sch);

	q->flags = ctl->flags;
	q->limit = ctl->limit;

	FUNC11(&q->parms, ctl->qth_min, ctl->qth_max, ctl->Wlog,
		      ctl->Plog, ctl->Scell_log,
		      FUNC2(tb[TCA_CHOKE_STAB]),
		      max_P);
	FUNC12(&q->vars);

	if (q->head == q->tail)
		FUNC10(&q->vars);

	FUNC16(sch);
	FUNC0(old);
	return 0;
}
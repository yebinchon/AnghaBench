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
struct tc_sfq_qopt_v1 {int depth; int /*<<< orphan*/  headdrop; int /*<<< orphan*/  flags; int /*<<< orphan*/  max_P; int /*<<< orphan*/  Scell_log; int /*<<< orphan*/  Plog; int /*<<< orphan*/  Wlog; int /*<<< orphan*/  qth_max; scalar_t__ qth_min; } ;
struct tc_sfq_qopt {int divisor; int perturb_period; int flows; int limit; scalar_t__ quantum; } ;
struct sk_buff {int dummy; } ;
struct sfq_sched_data {int perturb_period; int maxflows; int divisor; int maxdepth; int limit; int /*<<< orphan*/  perturbation; int /*<<< orphan*/  perturb_timer; int /*<<< orphan*/  headdrop; int /*<<< orphan*/  flags; int /*<<< orphan*/  red_parms; scalar_t__ quantum; int /*<<< orphan*/  scaled_quantum; } ;
struct red_parms {int dummy; } ;
struct nlattr {scalar_t__ nla_len; } ;
struct TYPE_2__ {unsigned int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int SFQ_MAX_DEPTH ; 
 int SFQ_MAX_FLOWS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct red_parms*) ; 
 struct red_parms* FUNC5 (int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 void* FUNC9 (struct nlattr*) ; 
 struct sfq_sched_data* FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC16 (struct Qdisc*) ; 
 scalar_t__ FUNC17 (struct Qdisc*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct red_parms*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC19(struct Qdisc *sch, struct nlattr *opt)
{
	struct sfq_sched_data *q = FUNC10(sch);
	struct tc_sfq_qopt *ctl = FUNC9(opt);
	struct tc_sfq_qopt_v1 *ctl_v1 = NULL;
	unsigned int qlen, dropped = 0;
	struct red_parms *p = NULL;
	struct sk_buff *to_free = NULL;
	struct sk_buff *tail = NULL;

	if (opt->nla_len < FUNC8(sizeof(*ctl)))
		return -EINVAL;
	if (opt->nla_len >= FUNC8(sizeof(*ctl_v1)))
		ctl_v1 = FUNC9(opt);
	if (ctl->divisor &&
	    (!FUNC3(ctl->divisor) || ctl->divisor > 65536))
		return -EINVAL;
	if (ctl_v1 && !FUNC12(ctl_v1->qth_min, ctl_v1->qth_max,
					ctl_v1->Wlog))
		return -EINVAL;
	if (ctl_v1 && ctl_v1->qth_min) {
		p = FUNC5(sizeof(*p), GFP_KERNEL);
		if (!p)
			return -ENOMEM;
	}
	FUNC15(sch);
	if (ctl->quantum) {
		q->quantum = ctl->quantum;
		q->scaled_quantum = FUNC0(q->quantum);
	}
	q->perturb_period = ctl->perturb_period * HZ;
	if (ctl->flows)
		q->maxflows = FUNC6(u32, ctl->flows, SFQ_MAX_FLOWS);
	if (ctl->divisor) {
		q->divisor = ctl->divisor;
		q->maxflows = FUNC6(u32, q->maxflows, q->divisor);
	}
	if (ctl_v1) {
		if (ctl_v1->depth)
			q->maxdepth = FUNC6(u32, ctl_v1->depth, SFQ_MAX_DEPTH);
		if (p) {
			FUNC18(q->red_parms, p);
			FUNC13(q->red_parms,
				      ctl_v1->qth_min, ctl_v1->qth_max,
				      ctl_v1->Wlog,
				      ctl_v1->Plog, ctl_v1->Scell_log,
				      NULL,
				      ctl_v1->max_P);
		}
		q->flags = ctl_v1->flags;
		q->headdrop = ctl_v1->headdrop;
	}
	if (ctl->limit) {
		q->limit = FUNC6(u32, ctl->limit, q->maxdepth * q->maxflows);
		q->maxflows = FUNC6(u32, q->maxflows, q->limit);
	}

	qlen = sch->q.qlen;
	while (sch->q.qlen > q->limit) {
		dropped += FUNC17(sch, &to_free);
		if (!tail)
			tail = to_free;
	}

	FUNC14(to_free, tail);
	FUNC11(sch, qlen - sch->q.qlen, dropped);

	FUNC1(&q->perturb_timer);
	if (q->perturb_period) {
		FUNC7(&q->perturb_timer, jiffies + q->perturb_period);
		FUNC2(&q->perturbation, sizeof(q->perturbation));
	}
	FUNC16(sch);
	FUNC4(p);
	return 0;
}
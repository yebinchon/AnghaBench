#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  rate; } ;
struct qdisc_rate_table {TYPE_1__ rate; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_8__ {int classid; } ;
struct cbq_class {int minidle; scalar_t__ ewma_log; scalar_t__ maxidle; scalar_t__ avpkt; struct cbq_class* tparent; struct cbq_class* share; struct cbq_class* borrow; struct qdisc_rate_table* R_tab; int /*<<< orphan*/  weight; int /*<<< orphan*/  allot; int /*<<< orphan*/  quantum; struct Qdisc* qdisc; TYPE_2__ common; TYPE_4__* q; int /*<<< orphan*/  block; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; int /*<<< orphan*/  filter_list; int /*<<< orphan*/ * next_alive; } ;
struct cbq_sched_data {int hgenerator; int /*<<< orphan*/  clhash; struct cbq_class link; } ;
struct Qdisc {int handle; int /*<<< orphan*/  dev_queue; } ;
struct TYPE_9__ {scalar_t__ qlen; } ;
struct TYPE_10__ {TYPE_3__ q; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOSR ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_CBQ_FOPT ; 
 size_t TCA_CBQ_LSSOPT ; 
 int /*<<< orphan*/  TCA_CBQ_MAX ; 
 size_t TCA_CBQ_OVL_STRATEGY ; 
 size_t TCA_CBQ_POLICE ; 
 size_t TCA_CBQ_RATE ; 
 size_t TCA_CBQ_RTAB ; 
 size_t TCA_CBQ_WRROPT ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int TC_H_ROOT ; 
 int /*<<< orphan*/  FUNC3 (struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC4 (struct cbq_class*) ; 
 struct cbq_class* FUNC5 (struct cbq_sched_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC7 (struct cbq_class*) ; 
 int FUNC8 (struct nlattr**,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC9 (struct cbq_sched_data*,struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC10 (struct cbq_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cbq_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cbq_class*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC15 (struct cbq_class*) ; 
 struct cbq_class* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct nlattr*) ; 
 TYPE_4__ noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC18 (struct Qdisc*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct qdisc_rate_table* FUNC20 (int /*<<< orphan*/ ,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,int) ; 
 struct cbq_sched_data* FUNC22 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC23 (struct qdisc_rate_table*) ; 
 int /*<<< orphan*/  FUNC24 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC25 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC26 (struct Qdisc*) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC29(struct Qdisc *sch, u32 classid, u32 parentid, struct nlattr **tca,
		 unsigned long *arg, struct netlink_ext_ack *extack)
{
	int err;
	struct cbq_sched_data *q = FUNC22(sch);
	struct cbq_class *cl = (struct cbq_class *)*arg;
	struct nlattr *opt = tca[TCA_OPTIONS];
	struct nlattr *tb[TCA_CBQ_MAX + 1];
	struct cbq_class *parent;
	struct qdisc_rate_table *rtab = NULL;

	err = FUNC8(tb, opt, extack);
	if (err < 0)
		return err;

	if (tb[TCA_CBQ_OVL_STRATEGY] || tb[TCA_CBQ_POLICE]) {
		FUNC0(extack, "Neither overlimit strategy nor policing attributes can be used for changing class params");
		return -EOPNOTSUPP;
	}

	if (cl) {
		/* Check parent */
		if (parentid) {
			if (cl->tparent &&
			    cl->tparent->common.classid != parentid) {
				FUNC0(extack, "Invalid parent id");
				return -EINVAL;
			}
			if (!cl->tparent && parentid != TC_H_ROOT) {
				FUNC0(extack, "Parent must be root");
				return -EINVAL;
			}
		}

		if (tb[TCA_CBQ_RATE]) {
			rtab = FUNC20(FUNC17(tb[TCA_CBQ_RATE]),
					      tb[TCA_CBQ_RTAB], extack);
			if (rtab == NULL)
				return -EINVAL;
		}

		if (tca[TCA_RATE]) {
			err = FUNC14(&cl->bstats, NULL,
						    &cl->rate_est,
						    NULL,
						    FUNC24(sch),
						    tca[TCA_RATE]);
			if (err) {
				FUNC0(extack, "Failed to replace specified rate estimator");
				FUNC23(rtab);
				return err;
			}
		}

		/* Change class parameters */
		FUNC25(sch);

		if (cl->next_alive != NULL)
			FUNC6(cl);

		if (rtab) {
			FUNC23(cl->R_tab);
			cl->R_tab = rtab;
		}

		if (tb[TCA_CBQ_LSSOPT])
			FUNC11(cl, FUNC17(tb[TCA_CBQ_LSSOPT]));

		if (tb[TCA_CBQ_WRROPT]) {
			FUNC9(q, cl);
			FUNC12(cl, FUNC17(tb[TCA_CBQ_WRROPT]));
		}

		if (tb[TCA_CBQ_FOPT])
			FUNC10(cl, FUNC17(tb[TCA_CBQ_FOPT]));

		if (cl->q->q.qlen)
			FUNC3(cl);

		FUNC26(sch);

		return 0;
	}

	if (parentid == TC_H_ROOT)
		return -EINVAL;

	if (!tb[TCA_CBQ_WRROPT] || !tb[TCA_CBQ_RATE] || !tb[TCA_CBQ_LSSOPT]) {
		FUNC0(extack, "One of the following attributes MUST be specified: WRR, rate or link sharing");
		return -EINVAL;
	}

	rtab = FUNC20(FUNC17(tb[TCA_CBQ_RATE]), tb[TCA_CBQ_RTAB],
			      extack);
	if (rtab == NULL)
		return -EINVAL;

	if (classid) {
		err = -EINVAL;
		if (FUNC1(classid ^ sch->handle) ||
		    FUNC5(q, classid)) {
			FUNC0(extack, "Specified class not found");
			goto failure;
		}
	} else {
		int i;
		classid = FUNC2(sch->handle, 0x8000);

		for (i = 0; i < 0x8000; i++) {
			if (++q->hgenerator >= 0x8000)
				q->hgenerator = 1;
			if (FUNC5(q, classid|q->hgenerator) == NULL)
				break;
		}
		err = -ENOSR;
		if (i >= 0x8000) {
			FUNC0(extack, "Unable to generate classid");
			goto failure;
		}
		classid = classid|q->hgenerator;
	}

	parent = &q->link;
	if (parentid) {
		parent = FUNC5(q, parentid);
		err = -EINVAL;
		if (!parent) {
			FUNC0(extack, "Failed to find parentid");
			goto failure;
		}
	}

	err = -ENOBUFS;
	cl = FUNC16(sizeof(*cl), GFP_KERNEL);
	if (cl == NULL)
		goto failure;

	err = FUNC27(&cl->block, &cl->filter_list, sch, extack);
	if (err) {
		FUNC15(cl);
		return err;
	}

	if (tca[TCA_RATE]) {
		err = FUNC13(&cl->bstats, NULL, &cl->rate_est,
					NULL,
					FUNC24(sch),
					tca[TCA_RATE]);
		if (err) {
			FUNC0(extack, "Couldn't create new estimator");
			FUNC28(cl->block);
			FUNC15(cl);
			goto failure;
		}
	}

	cl->R_tab = rtab;
	rtab = NULL;
	cl->q = FUNC19(sch->dev_queue, &pfifo_qdisc_ops, classid,
				  NULL);
	if (!cl->q)
		cl->q = &noop_qdisc;
	else
		FUNC21(cl->q, true);

	cl->common.classid = classid;
	cl->tparent = parent;
	cl->qdisc = sch;
	cl->allot = parent->allot;
	cl->quantum = cl->allot;
	cl->weight = cl->R_tab->rate.rate;

	FUNC25(sch);
	FUNC7(cl);
	cl->borrow = cl->tparent;
	if (cl->tparent != &q->link)
		cl->share = cl->tparent;
	FUNC4(parent);
	cl->minidle = -0x7FFFFFFF;
	FUNC11(cl, FUNC17(tb[TCA_CBQ_LSSOPT]));
	FUNC12(cl, FUNC17(tb[TCA_CBQ_WRROPT]));
	if (cl->ewma_log == 0)
		cl->ewma_log = q->link.ewma_log;
	if (cl->maxidle == 0)
		cl->maxidle = q->link.maxidle;
	if (cl->avpkt == 0)
		cl->avpkt = q->link.avpkt;
	if (tb[TCA_CBQ_FOPT])
		FUNC10(cl, FUNC17(tb[TCA_CBQ_FOPT]));
	FUNC26(sch);

	FUNC18(sch, &q->clhash);

	*arg = (unsigned long)cl;
	return 0;

failure:
	FUNC23(rtab);
	return err;
}
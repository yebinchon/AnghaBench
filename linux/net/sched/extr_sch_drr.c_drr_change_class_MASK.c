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
typedef  scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct drr_sched {int /*<<< orphan*/  clhash; } ;
struct TYPE_2__ {scalar_t__ classid; } ;
struct drr_class {TYPE_1__ common; int /*<<< orphan*/ * qdisc; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; scalar_t__ quantum; } ;
struct Qdisc {int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  TCA_DRR_MAX ; 
 size_t TCA_DRR_QUANTUM ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 int /*<<< orphan*/  drr_policy ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct drr_class*) ; 
 struct drr_class* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 struct drr_sched* FUNC12 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC15 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC16 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC17(struct Qdisc *sch, u32 classid, u32 parentid,
			    struct nlattr **tca, unsigned long *arg,
			    struct netlink_ext_ack *extack)
{
	struct drr_sched *q = FUNC12(sch);
	struct drr_class *cl = (struct drr_class *)*arg;
	struct nlattr *opt = tca[TCA_OPTIONS];
	struct nlattr *tb[TCA_DRR_MAX + 1];
	u32 quantum;
	int err;

	if (!opt) {
		FUNC0(extack, "DRR options are required for this operation");
		return -EINVAL;
	}

	err = FUNC5(tb, TCA_DRR_MAX, opt, drr_policy,
					  extack);
	if (err < 0)
		return err;

	if (tb[TCA_DRR_QUANTUM]) {
		quantum = FUNC4(tb[TCA_DRR_QUANTUM]);
		if (quantum == 0) {
			FUNC0(extack, "Specified DRR quantum cannot be zero");
			return -EINVAL;
		}
	} else
		quantum = FUNC6(FUNC10(sch));

	if (cl != NULL) {
		if (tca[TCA_RATE]) {
			err = FUNC1(&cl->bstats, NULL,
						    &cl->rate_est,
						    NULL,
						    FUNC14(sch),
						    tca[TCA_RATE]);
			if (err) {
				FUNC0(extack, "Failed to replace estimator");
				return err;
			}
		}

		FUNC15(sch);
		if (tb[TCA_DRR_QUANTUM])
			cl->quantum = quantum;
		FUNC16(sch);

		return 0;
	}

	cl = FUNC3(sizeof(struct drr_class), GFP_KERNEL);
	if (cl == NULL)
		return -ENOBUFS;

	cl->common.classid = classid;
	cl->quantum	   = quantum;
	cl->qdisc	   = FUNC9(sch->dev_queue,
					       &pfifo_qdisc_ops, classid,
					       NULL);
	if (cl->qdisc == NULL)
		cl->qdisc = &noop_qdisc;
	else
		FUNC11(cl->qdisc, true);

	if (tca[TCA_RATE]) {
		err = FUNC1(&cl->bstats, NULL, &cl->rate_est,
					    NULL,
					    FUNC14(sch),
					    tca[TCA_RATE]);
		if (err) {
			FUNC0(extack, "Failed to replace estimator");
			FUNC13(cl->qdisc);
			FUNC2(cl);
			return err;
		}
	}

	FUNC15(sch);
	FUNC8(&q->clhash, &cl->common);
	FUNC16(sch);

	FUNC7(sch, &q->clhash);

	*arg = (unsigned long)cl;
	return 0;
}
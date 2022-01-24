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
struct qdisc_size_table {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int flags; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  cpu_bstats; int /*<<< orphan*/  bstats; int /*<<< orphan*/  stab; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* change ) (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct qdisc_size_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct qdisc_size_table*) ; 
 size_t TCA_EGRESS_BLOCK ; 
 size_t TCA_INGRESS_BLOCK ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 size_t TCA_STAB ; 
 int TCQ_F_MQROOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 struct qdisc_size_table* FUNC4 (struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC5 (struct qdisc_size_table*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct qdisc_size_table*) ; 
 struct qdisc_size_table* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC10(struct Qdisc *sch, struct nlattr **tca,
			struct netlink_ext_ack *extack)
{
	struct qdisc_size_table *ostab, *stab = NULL;
	int err = 0;

	if (tca[TCA_OPTIONS]) {
		if (!sch->ops->change) {
			FUNC1(extack, "Change operation not supported by specified qdisc");
			return -EINVAL;
		}
		if (tca[TCA_INGRESS_BLOCK] || tca[TCA_EGRESS_BLOCK]) {
			FUNC1(extack, "Change of blocks is not supported");
			return -EOPNOTSUPP;
		}
		err = sch->ops->change(sch, tca[TCA_OPTIONS], extack);
		if (err)
			return err;
	}

	if (tca[TCA_STAB]) {
		stab = FUNC4(tca[TCA_STAB], extack);
		if (FUNC0(stab))
			return FUNC2(stab);
	}

	ostab = FUNC8(sch->stab);
	FUNC7(sch->stab, stab);
	FUNC5(ostab);

	if (tca[TCA_RATE]) {
		/* NB: ignores errors from replace_estimator
		   because change can't be undone. */
		if (sch->flags & TCQ_F_MQROOT)
			goto out;
		FUNC3(&sch->bstats,
				      sch->cpu_bstats,
				      &sch->rate_est,
				      NULL,
				      FUNC6(sch),
				      tca[TCA_RATE]);
	}
out:
	return 0;
}
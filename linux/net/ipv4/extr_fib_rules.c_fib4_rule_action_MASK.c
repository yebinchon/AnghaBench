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
struct TYPE_2__ {int /*<<< orphan*/  ip4; } ;
struct flowi {TYPE_1__ u; } ;
struct fib_table {int dummy; } ;
struct fib_rule {int action; int /*<<< orphan*/  fr_net; } ;
struct fib_result {int dummy; } ;
struct fib_lookup_arg {int /*<<< orphan*/  flags; scalar_t__ result; } ;

/* Variables and functions */
 int EACCES ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENETUNREACH ; 
#define  FR_ACT_BLACKHOLE 131 
#define  FR_ACT_PROHIBIT 130 
#define  FR_ACT_TO_TBL 129 
#define  FR_ACT_UNREACHABLE 128 
 struct fib_table* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fib_rule*,struct fib_lookup_arg*) ; 
 int FUNC2 (struct fib_table*,int /*<<< orphan*/ *,struct fib_result*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct fib_rule *rule, struct flowi *flp,
			    int flags, struct fib_lookup_arg *arg)
{
	int err = -EAGAIN;
	struct fib_table *tbl;
	u32 tb_id;

	switch (rule->action) {
	case FR_ACT_TO_TBL:
		break;

	case FR_ACT_UNREACHABLE:
		return -ENETUNREACH;

	case FR_ACT_PROHIBIT:
		return -EACCES;

	case FR_ACT_BLACKHOLE:
	default:
		return -EINVAL;
	}

	FUNC3();

	tb_id = FUNC1(rule, arg);
	tbl = FUNC0(rule->fr_net, tb_id);
	if (tbl)
		err = FUNC2(tbl, &flp->u.ip4,
				       (struct fib_result *)arg->result,
				       arg->flags);

	FUNC4();
	return err;
}
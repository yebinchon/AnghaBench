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
struct tcf_proto {TYPE_1__* ops; } ;
struct tcf_block {int /*<<< orphan*/  cb_lock; scalar_t__ nooffloaddevcnt; scalar_t__ lockeddevcnt; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;
struct TYPE_2__ {int /*<<< orphan*/  (* hw_add ) (struct tcf_proto*,void*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (struct tcf_block*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_proto*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_block*,struct tcf_proto*,unsigned int*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct tcf_block *block, struct tcf_proto *tp,
		    enum tc_setup_type type, void *type_data, bool err_stop,
		    u32 *flags, unsigned int *in_hw_count, bool rtnl_held)
{
	bool take_rtnl = FUNC0(block->lockeddevcnt) && !rtnl_held;
	int ok_count;

retry:
	if (take_rtnl)
		FUNC3();
	FUNC2(&block->cb_lock);
	/* Need to obtain rtnl lock if block is bound to devs that require it.
	 * In block bind code cb_lock is obtained while holding rtnl, so we must
	 * obtain the locks in same order here.
	 */
	if (!rtnl_held && !take_rtnl && block->lockeddevcnt) {
		FUNC7(&block->cb_lock);
		take_rtnl = true;
		goto retry;
	}

	/* Make sure all netdevs sharing this block are offload-capable. */
	if (block->nooffloaddevcnt && err_stop) {
		ok_count = -EOPNOTSUPP;
		goto err_unlock;
	}

	ok_count = FUNC1(block, type, type_data, err_stop);
	if (ok_count < 0)
		goto err_unlock;

	if (tp->ops->hw_add)
		tp->ops->hw_add(tp, type_data);
	if (ok_count > 0)
		FUNC6(block, tp, in_hw_count, flags,
					  ok_count, true);
err_unlock:
	FUNC7(&block->cb_lock);
	if (take_rtnl)
		FUNC4();
	return ok_count < 0 ? ok_count : 0;
}
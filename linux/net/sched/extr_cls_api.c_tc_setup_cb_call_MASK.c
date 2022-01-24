#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcf_block {int /*<<< orphan*/  cb_lock; scalar_t__ lockeddevcnt; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (struct tcf_block*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct tcf_block *block, enum tc_setup_type type,
		     void *type_data, bool err_stop, bool rtnl_held)
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
		FUNC5(&block->cb_lock);
		take_rtnl = true;
		goto retry;
	}

	ok_count = FUNC1(block, type, type_data, err_stop);

	FUNC5(&block->cb_lock);
	if (take_rtnl)
		FUNC4();
	return ok_count;
}
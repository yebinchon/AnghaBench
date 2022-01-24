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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_meta_ops {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENOENT ; 
 struct tcf_meta_ops* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tcf_meta_ops*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(u32 metaid, void *val, int len, bool rtnl_held)
{
	struct tcf_meta_ops *ops = FUNC0(metaid);
	int ret = 0;

	if (!ops) {
		ret = -ENOENT;
#ifdef CONFIG_MODULES
		if (rtnl_held)
			rtnl_unlock();
		request_module("ife-meta-%s", ife_meta_id2name(metaid));
		if (rtnl_held)
			rtnl_lock();
		ops = find_ife_oplist(metaid);
#endif
	}

	if (ops) {
		ret = 0;
		if (len)
			ret = FUNC2(ops, val, len);

		FUNC3(ops->owner);
	}

	return ret;
}
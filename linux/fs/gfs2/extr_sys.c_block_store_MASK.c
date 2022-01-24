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
struct lm_lockstruct {int /*<<< orphan*/  ls_recover_flags; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DFL_BLOCK_LOCKS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static ssize_t FUNC5(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;
	int ret, val;

	ret = FUNC2(buf, 0, &val);
	if (ret)
		return ret;

	if (val == 1)
		FUNC3(DFL_BLOCK_LOCKS, &ls->ls_recover_flags);
	else if (val == 0) {
		FUNC0(DFL_BLOCK_LOCKS, &ls->ls_recover_flags);
		FUNC4();
		FUNC1(sdp);
	} else {
		return -EINVAL;
	}
	return len;
}
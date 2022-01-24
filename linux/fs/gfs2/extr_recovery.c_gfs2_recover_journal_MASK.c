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
struct gfs2_jdesc {int jd_recover_error; int /*<<< orphan*/  jd_flags; int /*<<< orphan*/  jd_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  JDF_RECOVERY ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  gfs_recovery_wq ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct gfs2_jdesc *jd, bool wait)
{
	int rv;

	if (FUNC2(JDF_RECOVERY, &jd->jd_flags))
		return -EBUSY;

	/* we have JDF_RECOVERY, queue should always succeed */
	rv = FUNC1(gfs_recovery_wq, &jd->jd_work);
	FUNC0(!rv);

	if (wait)
		FUNC3(&jd->jd_flags, JDF_RECOVERY,
			    TASK_UNINTERRUPTIBLE);

	return wait ? jd->jd_recover_error : 0;
}
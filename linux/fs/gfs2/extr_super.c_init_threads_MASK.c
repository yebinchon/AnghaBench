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
struct task_struct {int dummy; } ;
struct gfs2_sbd {struct task_struct* sd_logd_process; struct task_struct* sd_quotad_process; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  gfs2_logd ; 
 int /*<<< orphan*/  gfs2_quotad ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,struct gfs2_sbd*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static int FUNC5(struct gfs2_sbd *sdp)
{
	struct task_struct *p;
	int error = 0;

	p = FUNC3(gfs2_logd, sdp, "gfs2_logd");
	if (FUNC0(p)) {
		error = FUNC1(p);
		FUNC2(sdp, "can't start logd thread: %d\n", error);
		return error;
	}
	sdp->sd_logd_process = p;

	p = FUNC3(gfs2_quotad, sdp, "gfs2_quotad");
	if (FUNC0(p)) {
		error = FUNC1(p);
		FUNC2(sdp, "can't start quotad thread: %d\n", error);
		goto fail;
	}
	sdp->sd_quotad_process = p;
	return 0;

fail:
	FUNC4(sdp->sd_logd_process);
	sdp->sd_logd_process = NULL;
	return error;
}
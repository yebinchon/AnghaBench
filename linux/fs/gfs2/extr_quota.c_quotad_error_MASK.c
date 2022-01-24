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
struct gfs2_sbd {int sd_log_error; int /*<<< orphan*/  sd_logd_waitq; int /*<<< orphan*/  sd_flags; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  SDF_WITHDRAWN ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_sbd*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gfs2_sbd *sdp, const char *msg, int error)
{
	if (error == 0 || error == -EROFS)
		return;
	if (!FUNC1(SDF_WITHDRAWN, &sdp->sd_flags)) {
		FUNC0(sdp, "gfs2_quotad: %s error %d\n", msg, error);
		sdp->sd_log_error = error;
		FUNC2(&sdp->sd_logd_waitq);
	}
}
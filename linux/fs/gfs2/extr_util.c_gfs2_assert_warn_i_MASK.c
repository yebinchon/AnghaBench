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
struct TYPE_2__ {scalar_t__ ar_errors; scalar_t__ ar_debug; } ;
struct gfs2_sbd {scalar_t__ sd_last_warning; int /*<<< orphan*/  sd_fsname; TYPE_1__ sd_args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ GFS2_ERRORS_PANIC ; 
 scalar_t__ GFS2_ERRORS_WITHDRAW ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,char*,char*,char const*,char*,unsigned int) ; 
 int FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gt_complain_secs ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char*,unsigned int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

int FUNC6(struct gfs2_sbd *sdp, char *assertion,
		       const char *function, char *file, unsigned int line)
{
	if (FUNC5(jiffies,
			sdp->sd_last_warning +
			FUNC3(sdp, gt_complain_secs) * HZ))
		return -2;

	if (sdp->sd_args.ar_errors == GFS2_ERRORS_WITHDRAW)
		FUNC2(sdp, "warning: assertion \"%s\" failed at function = %s, file = %s, line = %u\n",
			assertion, function, file, line);

	if (sdp->sd_args.ar_debug)
		FUNC0();
	else
		FUNC1();

	if (sdp->sd_args.ar_errors == GFS2_ERRORS_PANIC)
		FUNC4("GFS2: fsid=%s: warning: assertion \"%s\" failed\n"
		      "GFS2: fsid=%s:   function = %s, file = %s, line = %u\n",
		      sdp->sd_fsname, assertion,
		      sdp->sd_fsname, function, file, line);

	sdp->sd_last_warning = jiffies;

	return -1;
}
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
struct gfs2_sbd {scalar_t__ sd_lkstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*) ; 

void FUNC2(struct gfs2_sbd *sdp)
{
	if (sdp->sd_lkstats)
		FUNC0(sdp->sd_lkstats);
	FUNC1(sdp);
}
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
struct v4l2_dv_timings {int dummy; } ;
struct skeleton {scalar_t__ input; int /*<<< orphan*/  format; struct v4l2_dv_timings timings; int /*<<< orphan*/  queue; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODATA ; 
 int /*<<< orphan*/  skel_timings_cap ; 
 int /*<<< orphan*/  FUNC0 (struct skeleton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_dv_timings*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct v4l2_dv_timings*,struct v4l2_dv_timings*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_dv_timings*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct skeleton* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *_fh,
				 struct v4l2_dv_timings *timings)
{
	struct skeleton *skel = FUNC5(file);

	/* S_DV_TIMINGS is not supported on the S-Video input */
	if (skel->input == 0)
		return -ENODATA;

	/* Quick sanity check */
	if (!FUNC3(timings, &skel_timings_cap, NULL, NULL))
		return -EINVAL;

	/* Check if the timings are part of the CEA-861 timings. */
	if (!FUNC1(timings, &skel_timings_cap,
				      0, NULL, NULL))
		return -EINVAL;

	/* Return 0 if the new timings are the same as the current timings. */
	if (FUNC2(timings, &skel->timings, 0, false))
		return 0;

	/*
	 * Changing the timings implies a format change, which is not allowed
	 * while buffers for use with streaming have already been allocated.
	 */
	if (FUNC4(&skel->queue))
		return -EBUSY;

	/* TODO: Configure new timings */

	/* Save timings */
	skel->timings = *timings;

	/* Update the internal format */
	FUNC0(skel, &skel->format);
	return 0;
}
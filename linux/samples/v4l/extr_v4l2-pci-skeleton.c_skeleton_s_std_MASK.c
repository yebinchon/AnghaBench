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
typedef  scalar_t__ v4l2_std_id ;
struct skeleton {scalar_t__ std; int /*<<< orphan*/  format; int /*<<< orphan*/  queue; scalar_t__ input; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (struct skeleton*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct skeleton* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, v4l2_std_id std)
{
	struct skeleton *skel = FUNC2(file);

	/* S_STD is not supported on the HDMI input */
	if (skel->input)
		return -ENODATA;

	/*
	 * No change, so just return. Some applications call S_STD again after
	 * the buffers for streaming have been set up, so we have to allow for
	 * this behavior.
	 */
	if (std == skel->std)
		return 0;

	/*
	 * Changing the standard implies a format change, which is not allowed
	 * while buffers for use with streaming have already been allocated.
	 */
	if (FUNC1(&skel->queue))
		return -EBUSY;

	/* TODO: handle changing std */

	skel->std = std;

	/* Update the internal format */
	FUNC0(skel, &skel->format);
	return 0;
}
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
struct TYPE_2__ {int /*<<< orphan*/  tvnorms; } ;
struct skeleton {unsigned int input; int /*<<< orphan*/  format; TYPE_1__ vdev; int /*<<< orphan*/  queue; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  SKEL_TVNORMS ; 
 int /*<<< orphan*/  FUNC0 (struct skeleton*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct skeleton* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, unsigned int i)
{
	struct skeleton *skel = FUNC2(file);

	if (i > 1)
		return -EINVAL;

	/*
	 * Changing the input implies a format change, which is not allowed
	 * while buffers for use with streaming have already been allocated.
	 */
	if (FUNC1(&skel->queue))
		return -EBUSY;

	skel->input = i;
	/*
	 * Update tvnorms. The tvnorms value is used by the core to implement
	 * VIDIOC_ENUMSTD so it has to be correct. If tvnorms == 0, then
	 * ENUMSTD will return -ENODATA.
	 */
	skel->vdev.tvnorms = i ? 0 : SKEL_TVNORMS;

	/* Update the internal format */
	FUNC0(skel, &skel->format);
	return 0;
}
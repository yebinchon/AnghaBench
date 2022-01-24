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
struct TYPE_2__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct skeleton {int /*<<< orphan*/  format; int /*<<< orphan*/  queue; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct file*,void*,struct v4l2_format*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct skeleton* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				  struct v4l2_format *f)
{
	struct skeleton *skel = FUNC2(file);
	int ret;

	ret = FUNC0(file, priv, f);
	if (ret)
		return ret;

	/*
	 * It is not allowed to change the format while buffers for use with
	 * streaming have already been allocated.
	 */
	if (FUNC1(&skel->queue))
		return -EBUSY;

	/* TODO: change format */
	skel->format = f->fmt.pix;
	return 0;
}
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
struct skl_pipe {scalar_t__ state; } ;
struct skl_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPL_RESET ; 
 scalar_t__ SKL_PIPE_PAUSED ; 
 scalar_t__ SKL_PIPE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct skl_dev*,struct skl_pipe*,int /*<<< orphan*/ ) ; 

int FUNC2(struct skl_dev *skl, struct skl_pipe *pipe)
{
	int ret;

	/* If pipe was not created in FW, do not try to pause or delete */
	if (pipe->state < SKL_PIPE_PAUSED)
		return 0;

	ret = FUNC1(skl, pipe, PPL_RESET);
	if (ret < 0) {
		FUNC0(skl->dev, "Failed to reset pipe ret=%d\n", ret);
		return ret;
	}

	pipe->state = SKL_PIPE_RESET;

	return 0;
}
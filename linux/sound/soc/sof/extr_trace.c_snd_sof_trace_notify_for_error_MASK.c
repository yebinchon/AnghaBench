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
struct snd_sof_dev {int dtrace_error; int /*<<< orphan*/  trace_sleep; int /*<<< orphan*/  dev; scalar_t__ dtrace_is_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct snd_sof_dev *sdev)
{
	if (sdev->dtrace_is_enabled) {
		FUNC0(sdev->dev, "error: waking up any trace sleepers\n");
		sdev->dtrace_error = true;
		FUNC1(&sdev->trace_sleep);
	}
}
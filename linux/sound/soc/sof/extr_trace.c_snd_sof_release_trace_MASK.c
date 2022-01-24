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
struct snd_sof_dev {int dtrace_is_enabled; int dtrace_draining; int /*<<< orphan*/  trace_sleep; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_TRIGGER_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_sof_dev*) ; 
 int FUNC2 (struct snd_sof_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct snd_sof_dev *sdev)
{
	int ret;

	if (!sdev->dtrace_is_enabled)
		return;

	ret = FUNC2(sdev, SNDRV_PCM_TRIGGER_STOP);
	if (ret < 0)
		FUNC0(sdev->dev,
			"error: snd_sof_dma_trace_trigger: stop: %d\n", ret);

	ret = FUNC1(sdev);
	if (ret < 0)
		FUNC0(sdev->dev,
			"error: fail in snd_sof_dma_trace_release %d\n", ret);

	sdev->dtrace_is_enabled = false;
	sdev->dtrace_draining = true;
	FUNC3(&sdev->trace_sleep);
}
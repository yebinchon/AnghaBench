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
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_resume; int /*<<< orphan*/  resume; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOF_IPC_PM_CTX_RESTORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_sof_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct snd_sof_dev*) ; 
 int FUNC4 (struct snd_sof_dev*) ; 
 int FUNC5 (struct snd_sof_dev*) ; 
 int FUNC6 (struct snd_sof_dev*) ; 
 int FUNC7 (struct snd_sof_dev*) ; 
 TYPE_1__* FUNC8 (struct snd_sof_dev*) ; 
 int FUNC9 (struct snd_sof_dev*) ; 
 int FUNC10 (struct snd_sof_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct device *dev, bool runtime_resume)
{
	struct snd_sof_dev *sdev = FUNC1(dev);
	int ret;

	/* do nothing if dsp resume callbacks are not set */
	if (!FUNC8(sdev)->resume || !FUNC8(sdev)->runtime_resume)
		return 0;

	/*
	 * if the runtime_resume flag is set, call the runtime_resume routine
	 * or else call the system resume routine
	 */
	if (runtime_resume)
		ret = FUNC4(sdev);
	else
		ret = FUNC3(sdev);
	if (ret < 0) {
		FUNC0(sdev->dev,
			"error: failed to power up DSP after resume\n");
		return ret;
	}

	/* load the firmware */
	ret = FUNC6(sdev);
	if (ret < 0) {
		FUNC0(sdev->dev,
			"error: failed to load DSP firmware after resume %d\n",
			ret);
		return ret;
	}

	/* boot the firmware */
	ret = FUNC7(sdev);
	if (ret < 0) {
		FUNC0(sdev->dev,
			"error: failed to boot DSP firmware after resume %d\n",
			ret);
		return ret;
	}

	/* resume DMA trace, only need send ipc */
	ret = FUNC5(sdev);
	if (ret < 0) {
		/* non fatal */
		FUNC2(sdev->dev,
			 "warning: failed to init trace after resume %d\n",
			 ret);
	}

	/* restore pipelines */
	ret = FUNC9(sdev);
	if (ret < 0) {
		FUNC0(sdev->dev,
			"error: failed to restore pipeline after resume %d\n",
			ret);
		return ret;
	}

	/* notify DSP of system resume */
	ret = FUNC10(sdev, SOF_IPC_PM_CTX_RESTORE);
	if (ret < 0)
		FUNC0(sdev->dev,
			"error: ctx_restore ipc error during resume %d\n",
			ret);

	return ret;
}
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
struct snd_sof_pdata {int /*<<< orphan*/ * fw; int /*<<< orphan*/  pdev_mach; } ;
struct snd_sof_dev {int /*<<< orphan*/  probe_work; struct snd_sof_pdata* pdata; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_sof_dev* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_sof_dev*) ; 

int FUNC11(struct device *dev)
{
	struct snd_sof_dev *sdev = FUNC3(dev);
	struct snd_sof_pdata *pdata = sdev->pdata;

	if (FUNC0(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE))
		FUNC2(&sdev->probe_work);

	FUNC8(sdev);
	FUNC9(sdev);
	FUNC6(sdev);
	FUNC7(sdev);

	/*
	 * Unregister machine driver. This will unbind the snd_card which
	 * will remove the component driver and unload the topology
	 * before freeing the snd_card.
	 */
	if (!FUNC1(pdata->pdev_mach))
		FUNC4(pdata->pdev_mach);

	/*
	 * Unregistering the machine driver results in unloading the topology.
	 * Some widgets, ex: scheduler, attempt to power down the core they are
	 * scheduled on, when they are unloaded. Therefore, the DSP must be
	 * removed only after the topology has been unloaded.
	 */
	FUNC10(sdev);

	/* release firmware */
	FUNC5(pdata->fw);
	pdata->fw = NULL;

	return 0;
}
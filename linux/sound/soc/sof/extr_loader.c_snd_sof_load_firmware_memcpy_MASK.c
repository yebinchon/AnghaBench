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
struct snd_sof_pdata {int /*<<< orphan*/ * fw; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; struct snd_sof_pdata* pdata; } ;

/* Variables and functions */
 int FUNC0 (struct snd_sof_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct snd_sof_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_sof_dev*) ; 
 int FUNC5 (struct snd_sof_dev*) ; 

int FUNC6(struct snd_sof_dev *sdev)
{
	struct snd_sof_pdata *plat_data = sdev->pdata;
	int ret;

	ret = FUNC5(sdev);
	if (ret < 0)
		return ret;

	/* make sure the FW header and file is valid */
	ret = FUNC0(sdev, plat_data->fw);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: invalid FW header\n");
		goto error;
	}

	/* prepare the DSP for FW loading */
	ret = FUNC4(sdev);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: failed to reset DSP\n");
		goto error;
	}

	/* parse and load firmware modules to DSP */
	ret = FUNC2(sdev, plat_data->fw);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: invalid FW modules\n");
		goto error;
	}

	return 0;

error:
	FUNC3(plat_data->fw);
	plat_data->fw = NULL;
	return ret;

}
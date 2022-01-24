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
struct sst_pdata {struct sst_byt* dsp; } ;
struct sst_byt {int boot_complete; int /*<<< orphan*/  dev; int /*<<< orphan*/  dsp; int /*<<< orphan*/  fw; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct device *dev, struct sst_pdata *pdata)
{
	struct sst_byt *byt = pdata->dsp;
	int ret;

	FUNC0(byt->dev, "reload dsp fw\n");

	FUNC3(byt->dsp);

	ret = FUNC4(byt->fw);
	if (ret <  0) {
		FUNC1(dev, "error: failed to reload firmware\n");
		return ret;
	}

	/* wait for DSP boot completion */
	byt->boot_complete = false;
	FUNC2(byt->dsp);
	FUNC0(byt->dev, "dsp booting...\n");

	return 0;
}
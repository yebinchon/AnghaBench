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
struct sst_byt {int /*<<< orphan*/  dev; int /*<<< orphan*/  boot_complete; int /*<<< orphan*/  boot_wait; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IPC_BOOT_MSECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct device *dev, struct sst_pdata *pdata)
{
	struct sst_byt *byt = pdata->dsp;
	int err;

	FUNC0(byt->dev, "wait for dsp reboot\n");

	err = FUNC3(byt->boot_wait, byt->boot_complete,
				 FUNC2(IPC_BOOT_MSECS));
	if (err == 0) {
		FUNC1(byt->dev, "ipc: error DSP boot timeout\n");
		return -EIO;
	}

	FUNC0(byt->dev, "dsp rebooted\n");
	return 0;
}
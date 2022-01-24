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
struct snd_sof_dev {int dummy; } ;
struct hdac_bus {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct snd_sof_dev*,int) ; 
 struct hdac_bus* FUNC2 (struct snd_sof_dev*) ; 

int FUNC3(struct snd_sof_dev *sdev)
{
	struct hdac_bus *bus = FUNC2(sdev);
	int ret;

	/* stop hda controller and power dsp off */
	ret = FUNC1(sdev, false);
	if (ret < 0) {
		FUNC0(bus->dev, "error: suspending dsp\n");
		return ret;
	}

	return 0;
}
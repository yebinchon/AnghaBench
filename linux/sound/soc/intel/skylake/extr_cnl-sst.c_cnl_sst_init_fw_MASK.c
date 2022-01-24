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
struct TYPE_2__ {int (* load_fw ) (struct sst_dsp*) ;} ;
struct sst_dsp {TYPE_1__ fw_ops; } ;
struct skl_dev {int is_first_boot; struct sst_dsp* dsp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_dsp*) ; 
 int FUNC2 (struct sst_dsp*) ; 

int FUNC3(struct device *dev, struct skl_dev *skl)
{
	int ret;
	struct sst_dsp *sst = skl->dsp;

	ret = skl->dsp->fw_ops.load_fw(sst);
	if (ret < 0) {
		FUNC0(dev, "load base fw failed: %d", ret);
		return ret;
	}

	FUNC1(sst);

	skl->is_first_boot = false;

	return 0;
}
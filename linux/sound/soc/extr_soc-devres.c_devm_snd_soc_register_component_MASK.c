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
struct snd_soc_dai_driver {int dummy; } ;
struct snd_soc_component_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_component_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct device**) ; 
 struct device** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device**) ; 
 int FUNC3 (struct device*,struct snd_soc_component_driver const*,struct snd_soc_dai_driver*,int) ; 

int FUNC4(struct device *dev,
			 const struct snd_soc_component_driver *cmpnt_drv,
			 struct snd_soc_dai_driver *dai_drv, int num_dai)
{
	struct device **ptr;
	int ret;

	ptr = FUNC1(devm_component_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	ret = FUNC3(dev, cmpnt_drv, dai_drv, num_dai);
	if (ret == 0) {
		*ptr = dev;
		FUNC0(dev, ptr);
	} else {
		FUNC2(ptr);
	}

	return ret;
}
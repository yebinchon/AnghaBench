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
struct ssc_device {TYPE_1__* pdata; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ use_dma; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  atmel_ssc_component ; 
 int /*<<< orphan*/  atmel_ssc_dai ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct ssc_device* FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct ssc_device *ssc = FUNC3(dev);
	int ret;

	ret = FUNC4(dev, &atmel_ssc_component,
					 &atmel_ssc_dai, 1);
	if (ret) {
		FUNC2(dev, "Could not register DAI: %d\n", ret);
		return ret;
	}

	if (ssc->pdata->use_dma)
		ret = FUNC0(dev);
	else
		ret = FUNC1(dev);

	if (ret) {
		FUNC2(dev, "Could not register PCM: %d\n", ret);
		return ret;
	}

	return 0;
}
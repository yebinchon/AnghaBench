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
struct stm32_sai_data {TYPE_1__* pdev; int /*<<< orphan*/  pclk; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct stm32_sai_data* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct stm32_sai_data *sai = FUNC2(dev);
	int ret;

	ret = FUNC0(sai->pclk);
	if (ret) {
		FUNC1(&sai->pdev->dev, "failed to enable clock: %d\n", ret);
		return ret;
	}

	return 0;
}
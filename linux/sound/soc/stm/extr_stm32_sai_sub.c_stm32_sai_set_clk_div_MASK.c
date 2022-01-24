#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stm32_sai_sub_data {TYPE_3__* pdev; int /*<<< orphan*/  regmap; TYPE_2__* pdata; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int version; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  STM_SAI_CR1_REGX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct stm32_sai_sub_data *sai,
				 unsigned int div)
{
	int version = sai->pdata->conf.version;
	int ret, cr1, mask;

	if (div > FUNC1(version)) {
		FUNC4(&sai->pdev->dev, "Divider %d out of range\n", div);
		return -EINVAL;
	}

	mask = FUNC0(FUNC3(version));
	cr1 = FUNC2(div);
	ret = FUNC5(sai->regmap, STM_SAI_CR1_REGX, mask, cr1);
	if (ret < 0)
		FUNC4(&sai->pdev->dev, "Failed to update CR1 register\n");

	return ret;
}
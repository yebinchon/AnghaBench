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
struct stm32_sai_data {TYPE_1__* pdev; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SAI_GCR_SYNCIN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct stm32_sai_data *sai, int synci)
{
	int ret;

	/* Enable peripheral clock to allow GCR register access */
	ret = FUNC2(&sai->pdev->dev);
	if (ret)
		return ret;

	FUNC3(FUNC0(SAI_GCR_SYNCIN_MASK, (synci - 1)), sai->base);

	FUNC1(&sai->pdev->dev);

	return 0;
}
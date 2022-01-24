#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct stm32_sai_data {TYPE_1__* pdev; int /*<<< orphan*/  base; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SAI_GCR_SYNCOUT_MASK ; 
 int STM_SAI_SYNC_OUT_A ; 
 int STM_SAI_SYNC_OUT_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct stm32_sai_data *sai, int synco)
{
	u32 prev_synco;
	int ret;

	/* Enable peripheral clock to allow GCR register access */
	ret = FUNC6(&sai->pdev->dev);
	if (ret)
		return ret;

	FUNC2(&sai->pdev->dev, "Set %pOFn%s as synchro provider\n",
		sai->pdev->dev.of_node,
		synco == STM_SAI_SYNC_OUT_A ? "A" : "B");

	prev_synco = FUNC0(SAI_GCR_SYNCOUT_MASK, FUNC4(sai->base));
	if (prev_synco != STM_SAI_SYNC_OUT_NONE && synco != prev_synco) {
		FUNC3(&sai->pdev->dev, "%pOFn%s already set as sync provider\n",
			sai->pdev->dev.of_node,
			prev_synco == STM_SAI_SYNC_OUT_A ? "A" : "B");
			FUNC5(&sai->pdev->dev);
		return -EINVAL;
	}

	FUNC7(FUNC1(SAI_GCR_SYNCOUT_MASK, synco), sai->base);

	FUNC5(&sai->pdev->dev);

	return 0;
}
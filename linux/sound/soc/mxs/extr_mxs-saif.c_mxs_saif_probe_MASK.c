#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mxs_saif {int id; int master_id; TYPE_1__* dev; int /*<<< orphan*/  base; int /*<<< orphan*/  clk; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mxs_saif**) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct mxs_saif* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mxs_saif*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (TYPE_1__*) ; 
 struct mxs_saif** mxs_saif ; 
 int /*<<< orphan*/  mxs_saif_component ; 
 int /*<<< orphan*/  mxs_saif_dai ; 
 int /*<<< orphan*/  mxs_saif_irq ; 
 int FUNC12 (struct platform_device*) ; 
 int FUNC13 (struct device_node*,char*) ; 
 struct device_node* FUNC14 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct mxs_saif*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct mxs_saif *saif;
	int irq, ret = 0;
	struct device_node *master;

	if (!np)
		return -EINVAL;

	saif = FUNC7(&pdev->dev, sizeof(*saif), GFP_KERNEL);
	if (!saif)
		return -ENOMEM;

	ret = FUNC13(np, "saif");
	if (ret < 0)
		return ret;
	else
		saif->id = ret;

	if (saif->id >= FUNC0(mxs_saif)) {
		FUNC3(&pdev->dev, "get wrong saif id\n");
		return -EINVAL;
	}

	/*
	 * If there is no "fsl,saif-master" phandle, it's a saif
	 * master.  Otherwise, it's a slave and its phandle points
	 * to the master.
	 */
	master = FUNC14(np, "fsl,saif-master", 0);
	if (!master) {
		saif->master_id = saif->id;
	} else {
		ret = FUNC13(master, "saif");
		if (ret < 0)
			return ret;
		else
			saif->master_id = ret;

		if (saif->master_id >= FUNC0(mxs_saif)) {
			FUNC3(&pdev->dev, "get wrong master id\n");
			return -EINVAL;
		}
	}

	mxs_saif[saif->id] = saif;

	saif->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC1(saif->clk)) {
		ret = FUNC2(saif->clk);
		FUNC3(&pdev->dev, "Cannot get the clock: %d\n",
			ret);
		return ret;
	}

	saif->base = FUNC8(pdev, 0);
	if (FUNC1(saif->base))
		return FUNC2(saif->base);

	irq = FUNC15(pdev, 0);
	if (irq < 0)
		return irq;

	saif->dev = &pdev->dev;
	ret = FUNC9(&pdev->dev, irq, mxs_saif_irq, 0,
			       FUNC4(&pdev->dev), saif);
	if (ret) {
		FUNC3(&pdev->dev, "failed to request irq\n");
		return ret;
	}

	FUNC16(pdev, saif);

	/* We only support saif0 being tx and clock master */
	if (saif->id == 0) {
		ret = FUNC12(pdev);
		if (ret)
			FUNC5(&pdev->dev, "failed to init clocks\n");
	}

	ret = FUNC10(&pdev->dev, &mxs_saif_component,
					      &mxs_saif_dai, 1);
	if (ret) {
		FUNC3(&pdev->dev, "register DAI failed\n");
		return ret;
	}

	ret = FUNC11(&pdev->dev);
	if (ret) {
		FUNC3(&pdev->dev, "register PCM failed: %d\n", ret);
		return ret;
	}

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct madera {int /*<<< orphan*/  regmap; int /*<<< orphan*/  regmap_32bit; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_dev; } ;
struct TYPE_18__ {int num_inputs; TYPE_1__* adsp; TYPE_3__* dev; struct madera* madera; } ;
struct cs47l92 {TYPE_6__ core; int /*<<< orphan*/ * fll; } ;
struct TYPE_16__ {char* part; int num; int rev; int num_mems; int /*<<< orphan*/  lock_regions; int /*<<< orphan*/ * mem; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CS47L92_DIG_VU ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MADERA_DSP1_CONFIG_1 ; 
 scalar_t__ MADERA_FLL1_CONTROL_1 ; 
 scalar_t__ MADERA_FLL2_CONTROL_1 ; 
 int /*<<< orphan*/  MADERA_IRQ_DSP_IRQ1 ; 
 int MADERA_MAX_DAI ; 
 int /*<<< orphan*/  WMFW_ADSP2 ; 
 int /*<<< orphan*/  WM_ADSP2_REGION_1_9 ; 
 int /*<<< orphan*/  cs47l92_adsp2_irq ; 
 int /*<<< orphan*/ * cs47l92_dai ; 
 int /*<<< orphan*/ * cs47l92_digital_vu ; 
 int /*<<< orphan*/ * cs47l92_dsp1_regions ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 struct madera* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 struct cs47l92* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct madera*,int /*<<< orphan*/ ,struct cs47l92*) ; 
 int FUNC12 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct madera*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct madera*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct cs47l92*) ; 
 int FUNC16 (struct madera*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct cs47l92*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_dev_cs47l92 ; 
 int /*<<< orphan*/  wm_adsp2_bus_error ; 
 int FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct madera *madera = FUNC4(pdev->dev.parent);
	struct cs47l92 *cs47l92;
	int i, ret;

	FUNC1(FUNC0(cs47l92_dai) > MADERA_MAX_DAI);

	/* quick exit if Madera irqchip driver hasn't completed probe */
	if (!madera->irq_dev) {
		FUNC2(&pdev->dev, "irqchip driver not ready\n");
		return -EPROBE_DEFER;
	}

	cs47l92 = FUNC6(&pdev->dev, sizeof(struct cs47l92), GFP_KERNEL);
	if (!cs47l92)
		return -ENOMEM;

	FUNC17(pdev, cs47l92);

	cs47l92->core.madera = madera;
	cs47l92->core.dev = &pdev->dev;
	cs47l92->core.num_inputs = 8;

	ret = FUNC9(&cs47l92->core);
	if (ret)
		return ret;

	ret = FUNC15(madera, MADERA_IRQ_DSP_IRQ1,
				 "ADSP2 Compressed IRQ", cs47l92_adsp2_irq,
				 cs47l92);
	if (ret != 0) {
		FUNC3(&pdev->dev, "Failed to request DSP IRQ: %d\n", ret);
		goto error_core;
	}

	ret = FUNC16(madera, MADERA_IRQ_DSP_IRQ1, 1);
	if (ret)
		FUNC5(&pdev->dev, "Failed to set DSP IRQ wake: %d\n", ret);

	cs47l92->core.adsp[0].part = "cs47l92";
	cs47l92->core.adsp[0].num = 1;
	cs47l92->core.adsp[0].type = WMFW_ADSP2;
	cs47l92->core.adsp[0].rev = 2;
	cs47l92->core.adsp[0].dev = madera->dev;
	cs47l92->core.adsp[0].regmap = madera->regmap_32bit;

	cs47l92->core.adsp[0].base = MADERA_DSP1_CONFIG_1;
	cs47l92->core.adsp[0].mem = cs47l92_dsp1_regions;
	cs47l92->core.adsp[0].num_mems = FUNC0(cs47l92_dsp1_regions);

	cs47l92->core.adsp[0].lock_regions = WM_ADSP2_REGION_1_9;

	ret = FUNC22(&cs47l92->core.adsp[0]);
	if (ret != 0)
		goto error_dsp_irq;

	ret = FUNC12(&cs47l92->core, 0, wm_adsp2_bus_error);
	if (ret != 0) {
		FUNC23(&cs47l92->core.adsp[0]);
		goto error_adsp;
	}

	FUNC14(madera, 1, MADERA_FLL1_CONTROL_1 - 1,
			&cs47l92->fll[0]);
	FUNC14(madera, 2, MADERA_FLL2_CONTROL_1 - 1,
			&cs47l92->fll[1]);

	for (i = 0; i < FUNC0(cs47l92_dai); i++)
		FUNC13(&cs47l92->core, i);

	/* Latch volume update bits */
	for (i = 0; i < FUNC0(cs47l92_digital_vu); i++)
		FUNC21(madera->regmap, cs47l92_digital_vu[i],
				   CS47L92_DIG_VU, CS47L92_DIG_VU);

	FUNC19(&pdev->dev);
	FUNC20(&pdev->dev);

	ret = FUNC7(&pdev->dev,
					      &soc_component_dev_cs47l92,
					      cs47l92_dai,
					      FUNC0(cs47l92_dai));
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to register component: %d\n", ret);
		goto error_pm_runtime;
	}

	return ret;

error_pm_runtime:
	FUNC18(&pdev->dev);
	FUNC10(&cs47l92->core, 0);
error_adsp:
	FUNC23(&cs47l92->core.adsp[0]);
error_dsp_irq:
	FUNC16(madera, MADERA_IRQ_DSP_IRQ1, 0);
	FUNC11(madera, MADERA_IRQ_DSP_IRQ1, cs47l92);
error_core:
	FUNC8(&cs47l92->core);

	return ret;
}
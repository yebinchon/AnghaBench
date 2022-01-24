#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct madera {int /*<<< orphan*/  regmap; int /*<<< orphan*/  regmap_32bit; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_dev; } ;
struct TYPE_20__ {int num_inputs; TYPE_1__* adsp; TYPE_3__* dev; struct madera* madera; } ;
struct cs47l15 {TYPE_6__ core; int /*<<< orphan*/ * fll; } ;
struct TYPE_18__ {char* part; int num; int rev; int num_mems; int lock_regions; int /*<<< orphan*/ * mem; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CS47L15_DIG_VU ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MADERA_DSP1_CONFIG_1 ; 
 scalar_t__ MADERA_FLL1_CONTROL_1 ; 
 scalar_t__ MADERA_FLLAO_CONTROL_1 ; 
 int /*<<< orphan*/  MADERA_IRQ_DSP_IRQ1 ; 
 int MADERA_MAX_DAI ; 
 int /*<<< orphan*/  WMFW_ADSP2 ; 
 int WM_ADSP2_REGION_1 ; 
 int WM_ADSP2_REGION_2 ; 
 int WM_ADSP2_REGION_3 ; 
 int /*<<< orphan*/  cs47l15_adsp2_irq ; 
 int /*<<< orphan*/ * cs47l15_dai ; 
 int /*<<< orphan*/ * cs47l15_digital_vu ; 
 int /*<<< orphan*/ * cs47l15_dsp1_regions ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 struct madera* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 struct cs47l15* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct madera*,int /*<<< orphan*/ ,struct cs47l15*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int FUNC13 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct madera*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_6__*) ; 
 int FUNC17 (struct madera*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct cs47l15*) ; 
 int FUNC18 (struct madera*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct cs47l15*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_dev_cs47l15 ; 
 int /*<<< orphan*/  wm_adsp2_bus_error ; 
 int FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct madera *madera = FUNC4(pdev->dev.parent);
	struct cs47l15 *cs47l15;
	int i, ret;

	FUNC1(FUNC0(cs47l15_dai) > MADERA_MAX_DAI);

	/* quick exit if Madera irqchip driver hasn't completed probe */
	if (!madera->irq_dev) {
		FUNC2(&pdev->dev, "irqchip driver not ready\n");
		return -EPROBE_DEFER;
	}

	cs47l15 = FUNC6(&pdev->dev, sizeof(struct cs47l15),
			       GFP_KERNEL);
	if (!cs47l15)
		return -ENOMEM;

	FUNC19(pdev, cs47l15);

	cs47l15->core.madera = madera;
	cs47l15->core.dev = &pdev->dev;
	cs47l15->core.num_inputs = 4;

	ret = FUNC9(&cs47l15->core);
	if (ret)
		return ret;

	ret = FUNC16(&cs47l15->core);
	if (ret)
		goto error_core;

	ret = FUNC17(madera, MADERA_IRQ_DSP_IRQ1,
				 "ADSP2 Compressed IRQ", cs47l15_adsp2_irq,
				 cs47l15);
	if (ret != 0) {
		FUNC3(&pdev->dev, "Failed to request DSP IRQ: %d\n", ret);
		goto error_overheat;
	}

	ret = FUNC18(madera, MADERA_IRQ_DSP_IRQ1, 1);
	if (ret)
		FUNC5(&pdev->dev, "Failed to set DSP IRQ wake: %d\n", ret);

	cs47l15->core.adsp[0].part = "cs47l15";
	cs47l15->core.adsp[0].num = 1;
	cs47l15->core.adsp[0].type = WMFW_ADSP2;
	cs47l15->core.adsp[0].rev = 2;
	cs47l15->core.adsp[0].dev = madera->dev;
	cs47l15->core.adsp[0].regmap = madera->regmap_32bit;

	cs47l15->core.adsp[0].base = MADERA_DSP1_CONFIG_1;
	cs47l15->core.adsp[0].mem = cs47l15_dsp1_regions;
	cs47l15->core.adsp[0].num_mems = FUNC0(cs47l15_dsp1_regions);

	cs47l15->core.adsp[0].lock_regions =
		WM_ADSP2_REGION_1 | WM_ADSP2_REGION_2 | WM_ADSP2_REGION_3;

	ret = FUNC24(&cs47l15->core.adsp[0]);
	if (ret != 0)
		goto error_dsp_irq;

	ret = FUNC13(&cs47l15->core, 0, wm_adsp2_bus_error);
	if (ret)
		goto error_adsp;

	FUNC15(madera, 1, MADERA_FLL1_CONTROL_1 - 1,
			&cs47l15->fll[0]);
	FUNC15(madera, 4, MADERA_FLLAO_CONTROL_1 - 1,
			&cs47l15->fll[1]);

	for (i = 0; i < FUNC0(cs47l15_dai); i++)
		FUNC14(&cs47l15->core, i);

	/* Latch volume update bits */
	for (i = 0; i < FUNC0(cs47l15_digital_vu); i++)
		FUNC23(madera->regmap, cs47l15_digital_vu[i],
				   CS47L15_DIG_VU, CS47L15_DIG_VU);

	FUNC21(&pdev->dev);
	FUNC22(&pdev->dev);

	ret = FUNC7(&pdev->dev,
					      &soc_component_dev_cs47l15,
					      cs47l15_dai,
					      FUNC0(cs47l15_dai));
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to register component: %d\n", ret);
		goto error_pm_runtime;
	}

	return ret;

error_pm_runtime:
	FUNC20(&pdev->dev);
	FUNC10(&cs47l15->core, 0);
error_adsp:
	FUNC25(&cs47l15->core.adsp[0]);
error_dsp_irq:
	FUNC18(madera, MADERA_IRQ_DSP_IRQ1, 0);
	FUNC11(madera, MADERA_IRQ_DSP_IRQ1, cs47l15);
error_overheat:
	FUNC12(&cs47l15->core);
error_core:
	FUNC8(&cs47l15->core);

	return ret;
}
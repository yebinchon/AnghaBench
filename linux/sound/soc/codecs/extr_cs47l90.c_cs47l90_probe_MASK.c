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
struct cs47l90 {TYPE_6__ core; int /*<<< orphan*/ * fll; } ;
struct TYPE_16__ {char* part; int num; int rev; int num_mems; int /*<<< orphan*/  lock_regions; int /*<<< orphan*/  mem; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CS47L90_DIG_VU ; 
 int CS47L90_NUM_ADSP ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MADERA_FLL1_CONTROL_1 ; 
 scalar_t__ MADERA_FLL2_CONTROL_1 ; 
 scalar_t__ MADERA_FLLAO_CONTROL_1 ; 
 int /*<<< orphan*/  MADERA_IRQ_DSP_IRQ1 ; 
 int MADERA_MAX_DAI ; 
 int /*<<< orphan*/  WMFW_ADSP2 ; 
 int /*<<< orphan*/  WM_ADSP2_REGION_1_9 ; 
 int /*<<< orphan*/  cs47l90_adsp2_irq ; 
 int /*<<< orphan*/ * cs47l90_dai ; 
 int /*<<< orphan*/ * cs47l90_digital_vu ; 
 int /*<<< orphan*/ * cs47l90_dsp1_regions ; 
 int /*<<< orphan*/ * cs47l90_dsp_control_bases ; 
 int /*<<< orphan*/ * cs47l90_dsp_regions ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 struct madera* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 struct cs47l90* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct madera*,int /*<<< orphan*/ ,struct cs47l90*) ; 
 int FUNC12 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct madera*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct madera*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct cs47l90*) ; 
 int FUNC16 (struct madera*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct cs47l90*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_dev_cs47l90 ; 
 int /*<<< orphan*/  wm_adsp2_bus_error ; 
 int FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct madera *madera = FUNC4(pdev->dev.parent);
	struct cs47l90 *cs47l90;
	int i, ret;

	FUNC1(FUNC0(cs47l90_dai) > MADERA_MAX_DAI);

	/* quick exit if Madera irqchip driver hasn't completed probe */
	if (!madera->irq_dev) {
		FUNC2(&pdev->dev, "irqchip driver not ready\n");
		return -EPROBE_DEFER;
	}

	cs47l90 = FUNC6(&pdev->dev, sizeof(struct cs47l90),
			       GFP_KERNEL);
	if (!cs47l90)
		return -ENOMEM;

	FUNC17(pdev, cs47l90);

	cs47l90->core.madera = madera;
	cs47l90->core.dev = &pdev->dev;
	cs47l90->core.num_inputs = 10;

	ret = FUNC9(&cs47l90->core);
	if (ret)
		return ret;

	ret = FUNC15(madera, MADERA_IRQ_DSP_IRQ1,
				 "ADSP2 Compressed IRQ", cs47l90_adsp2_irq,
				 cs47l90);
	if (ret != 0) {
		FUNC3(&pdev->dev, "Failed to request DSP IRQ: %d\n", ret);
		goto error_core;
	}

	ret = FUNC16(madera, MADERA_IRQ_DSP_IRQ1, 1);
	if (ret)
		FUNC5(&pdev->dev, "Failed to set DSP IRQ wake: %d\n", ret);

	for (i = 0; i < CS47L90_NUM_ADSP; i++) {
		cs47l90->core.adsp[i].part = "cs47l90";
		cs47l90->core.adsp[i].num = i + 1;
		cs47l90->core.adsp[i].type = WMFW_ADSP2;
		cs47l90->core.adsp[i].rev = 2;
		cs47l90->core.adsp[i].dev = madera->dev;
		cs47l90->core.adsp[i].regmap = madera->regmap_32bit;

		cs47l90->core.adsp[i].base = cs47l90_dsp_control_bases[i];
		cs47l90->core.adsp[i].mem = cs47l90_dsp_regions[i];
		cs47l90->core.adsp[i].num_mems =
			FUNC0(cs47l90_dsp1_regions);

		cs47l90->core.adsp[i].lock_regions = WM_ADSP2_REGION_1_9;

		ret = FUNC22(&cs47l90->core.adsp[i]);

		if (ret == 0) {
			ret = FUNC12(&cs47l90->core, i,
							wm_adsp2_bus_error);
			if (ret != 0)
				FUNC23(&cs47l90->core.adsp[i]);
		}

		if (ret) {
			for (--i; i >= 0; --i) {
				FUNC10(&cs47l90->core, i);
				FUNC23(&cs47l90->core.adsp[i]);
			}
			goto error_dsp_irq;
		}
	}

	FUNC14(madera, 1, MADERA_FLL1_CONTROL_1 - 1,
			&cs47l90->fll[0]);
	FUNC14(madera, 2, MADERA_FLL2_CONTROL_1 - 1,
			&cs47l90->fll[1]);
	FUNC14(madera, 4, MADERA_FLLAO_CONTROL_1 - 1,
			&cs47l90->fll[2]);

	for (i = 0; i < FUNC0(cs47l90_dai); i++)
		FUNC13(&cs47l90->core, i);

	/* Latch volume update bits */
	for (i = 0; i < FUNC0(cs47l90_digital_vu); i++)
		FUNC21(madera->regmap, cs47l90_digital_vu[i],
				   CS47L90_DIG_VU, CS47L90_DIG_VU);

	FUNC19(&pdev->dev);
	FUNC20(&pdev->dev);

	ret = FUNC7(&pdev->dev,
					      &soc_component_dev_cs47l90,
					      cs47l90_dai,
					      FUNC0(cs47l90_dai));
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to register component: %d\n", ret);
		goto error_pm_runtime;
	}

	return ret;

error_pm_runtime:
	FUNC18(&pdev->dev);

	for (i = 0; i < CS47L90_NUM_ADSP; i++) {
		FUNC10(&cs47l90->core, i);
		FUNC23(&cs47l90->core.adsp[i]);
	}
error_dsp_irq:
	FUNC16(madera, MADERA_IRQ_DSP_IRQ1, 0);
	FUNC11(madera, MADERA_IRQ_DSP_IRQ1, cs47l90);
error_core:
	FUNC8(&cs47l90->core);

	return ret;
}
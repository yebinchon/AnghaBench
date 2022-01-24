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
struct cs47l85 {TYPE_6__ core; int /*<<< orphan*/ * fll; } ;
struct TYPE_16__ {char* part; int num; int rev; int num_mems; int /*<<< orphan*/  mem; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CS47L85_NUM_ADSP ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MADERA_DIG_VU ; 
 scalar_t__ MADERA_FLL1_CONTROL_1 ; 
 scalar_t__ MADERA_FLL2_CONTROL_1 ; 
 scalar_t__ MADERA_FLL3_CONTROL_1 ; 
 int /*<<< orphan*/  MADERA_IRQ_DSP_IRQ1 ; 
 int MADERA_MAX_DAI ; 
 int /*<<< orphan*/  WMFW_ADSP2 ; 
 int /*<<< orphan*/  cs47l85_adsp2_irq ; 
 int /*<<< orphan*/ * cs47l85_dai ; 
 int /*<<< orphan*/ * cs47l85_digital_vu ; 
 int /*<<< orphan*/ * cs47l85_dsp1_regions ; 
 int /*<<< orphan*/ * cs47l85_dsp_regions ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 struct madera* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 struct cs47l85* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (struct madera*,int /*<<< orphan*/ ,struct cs47l85*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct madera*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_6__*) ; 
 int FUNC15 (struct madera*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct cs47l85*) ; 
 int FUNC16 (struct madera*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct cs47l85*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_dev_cs47l85 ; 
 int /*<<< orphan*/ * wm_adsp2_control_bases ; 
 int FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct madera *madera = FUNC4(pdev->dev.parent);
	struct cs47l85 *cs47l85;
	int i, ret;

	FUNC1(FUNC0(cs47l85_dai) > MADERA_MAX_DAI);

	/* quick exit if Madera irqchip driver hasn't completed probe */
	if (!madera->irq_dev) {
		FUNC2(&pdev->dev, "irqchip driver not ready\n");
		return -EPROBE_DEFER;
	}

	cs47l85 = FUNC6(&pdev->dev, sizeof(struct cs47l85),
			       GFP_KERNEL);
	if (!cs47l85)
		return -ENOMEM;

	FUNC17(pdev, cs47l85);

	cs47l85->core.madera = madera;
	cs47l85->core.dev = &pdev->dev;
	cs47l85->core.num_inputs = 12;

	ret = FUNC9(&cs47l85->core);
	if (ret)
		return ret;

	ret = FUNC14(&cs47l85->core);
	if (ret)
		goto error_core;

	ret = FUNC15(madera, MADERA_IRQ_DSP_IRQ1,
				 "ADSP2 Compressed IRQ", cs47l85_adsp2_irq,
				 cs47l85);
	if (ret) {
		FUNC3(&pdev->dev, "Failed to request DSP IRQ: %d\n", ret);
		goto error_overheat;
	}

	ret = FUNC16(madera, MADERA_IRQ_DSP_IRQ1, 1);
	if (ret)
		FUNC5(&pdev->dev, "Failed to set DSP IRQ wake: %d\n", ret);

	for (i = 0; i < CS47L85_NUM_ADSP; i++) {
		cs47l85->core.adsp[i].part = "cs47l85";
		cs47l85->core.adsp[i].num = i + 1;
		cs47l85->core.adsp[i].type = WMFW_ADSP2;
		cs47l85->core.adsp[i].rev = 1;
		cs47l85->core.adsp[i].dev = madera->dev;
		cs47l85->core.adsp[i].regmap = madera->regmap_32bit;

		cs47l85->core.adsp[i].base = wm_adsp2_control_bases[i];
		cs47l85->core.adsp[i].mem = cs47l85_dsp_regions[i];
		cs47l85->core.adsp[i].num_mems =
			FUNC0(cs47l85_dsp1_regions);

		ret = FUNC22(&cs47l85->core.adsp[i]);
		if (ret) {
			for (--i; i >= 0; --i)
				FUNC23(&cs47l85->core.adsp[i]);
			goto error_dsp_irq;
		}
	}

	FUNC13(madera, 1, MADERA_FLL1_CONTROL_1 - 1,
			&cs47l85->fll[0]);
	FUNC13(madera, 2, MADERA_FLL2_CONTROL_1 - 1,
			&cs47l85->fll[1]);
	FUNC13(madera, 3, MADERA_FLL3_CONTROL_1 - 1,
			&cs47l85->fll[2]);

	for (i = 0; i < FUNC0(cs47l85_dai); i++)
		FUNC12(&cs47l85->core, i);

	/* Latch volume update bits */
	for (i = 0; i < FUNC0(cs47l85_digital_vu); i++)
		FUNC21(madera->regmap, cs47l85_digital_vu[i],
				   MADERA_DIG_VU, MADERA_DIG_VU);

	FUNC19(&pdev->dev);
	FUNC20(&pdev->dev);

	ret = FUNC7(&pdev->dev,
					      &soc_component_dev_cs47l85,
					      cs47l85_dai,
					      FUNC0(cs47l85_dai));
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to register component: %d\n", ret);
		goto error_pm_runtime;
	}

	return ret;

error_pm_runtime:
	FUNC18(&pdev->dev);

	for (i = 0; i < CS47L85_NUM_ADSP; i++)
		FUNC23(&cs47l85->core.adsp[i]);
error_dsp_irq:
	FUNC16(madera, MADERA_IRQ_DSP_IRQ1, 0);
	FUNC10(madera, MADERA_IRQ_DSP_IRQ1, cs47l85);
error_overheat:
	FUNC11(&cs47l85->core);
error_core:
	FUNC8(&cs47l85->core);

	return ret;
}
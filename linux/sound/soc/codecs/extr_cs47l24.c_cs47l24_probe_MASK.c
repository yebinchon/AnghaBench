#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_18__ {int num_inputs; TYPE_1__* adsp; struct arizona* arizona; } ;
struct cs47l24_priv {TYPE_14__ core; TYPE_2__* fll; } ;
struct arizona {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_20__ {int vco_mult; } ;
struct TYPE_19__ {char* part; int num; int num_mems; int /*<<< orphan*/  mem; scalar_t__ base; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ ARIZONA_DSP1_CONTROL_1 ; 
 scalar_t__ ARIZONA_FLL1_CONTROL_1 ; 
 scalar_t__ ARIZONA_FLL2_CONTROL_1 ; 
 int /*<<< orphan*/  ARIZONA_IRQ_DSP_IRQ1 ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL1_CLOCK_OK ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL1_LOCK ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL2_CLOCK_OK ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL2_LOCK ; 
 int ARIZONA_MAX_DAI ; 
 TYPE_2__ ARIZONA_SAMPLE_RATE_2 ; 
 int ARIZONA_SAMPLE_RATE_2_MASK ; 
 TYPE_2__ ARIZONA_SAMPLE_RATE_3 ; 
 int ARIZONA_SAMPLE_RATE_3_MASK ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int CS47L24_DIG_VU ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMFW_ADSP2 ; 
 int /*<<< orphan*/  FUNC3 (struct arizona*,int /*<<< orphan*/ ,struct cs47l24_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC5 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_14__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct arizona*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC8 (struct arizona*) ; 
 int FUNC9 (struct arizona*) ; 
 int FUNC10 (struct arizona*) ; 
 int FUNC11 (struct arizona*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct cs47l24_priv*) ; 
 int FUNC12 (struct arizona*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cs47l24_adsp2_irq ; 
 TYPE_2__* cs47l24_dai ; 
 TYPE_2__* cs47l24_digital_vu ; 
 TYPE_2__* cs47l24_dsp2_regions ; 
 int /*<<< orphan*/ * cs47l24_dsp_regions ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char*,int) ; 
 struct arizona* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,char*,int) ; 
 struct cs47l24_priv* FUNC17 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct cs47l24_priv*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,TYPE_2__,int,int) ; 
 int /*<<< orphan*/  soc_component_dev_cs47l24 ; 
 int FUNC23 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct arizona *arizona = FUNC14(pdev->dev.parent);
	struct cs47l24_priv *cs47l24;
	int i, ret;

	FUNC1(FUNC0(cs47l24_dai) > ARIZONA_MAX_DAI);

	cs47l24 = FUNC17(&pdev->dev, sizeof(struct cs47l24_priv),
			       GFP_KERNEL);
	if (!cs47l24)
		return -ENOMEM;

	if (FUNC2(CONFIG_OF)) {
		if (!FUNC15(arizona->dev)) {
			ret = FUNC10(arizona);
			if (ret < 0)
				return ret;
		}
	}

	FUNC19(pdev, cs47l24);

	cs47l24->core.arizona = arizona;
	cs47l24->core.num_inputs = 4;

	for (i = 1; i <= 2; i++) {
		cs47l24->core.adsp[i].part = "cs47l24";
		cs47l24->core.adsp[i].num = i + 1;
		cs47l24->core.adsp[i].type = WMFW_ADSP2;
		cs47l24->core.adsp[i].dev = arizona->dev;
		cs47l24->core.adsp[i].regmap = arizona->regmap;

		cs47l24->core.adsp[i].base = ARIZONA_DSP1_CONTROL_1 +
					     (0x100 * i);
		cs47l24->core.adsp[i].mem = cs47l24_dsp_regions[i - 1];
		cs47l24->core.adsp[i].num_mems =
				FUNC0(cs47l24_dsp2_regions);

		ret = FUNC23(&cs47l24->core.adsp[i]);
		if (ret != 0)
			return ret;
	}

	for (i = 0; i < FUNC0(cs47l24->fll); i++)
		cs47l24->fll[i].vco_mult = 3;

	FUNC7(arizona, 1, ARIZONA_FLL1_CONTROL_1 - 1,
			 ARIZONA_IRQ_FLL1_LOCK, ARIZONA_IRQ_FLL1_CLOCK_OK,
			 &cs47l24->fll[0]);
	FUNC7(arizona, 2, ARIZONA_FLL2_CONTROL_1 - 1,
			 ARIZONA_IRQ_FLL2_LOCK, ARIZONA_IRQ_FLL2_CLOCK_OK,
			 &cs47l24->fll[1]);

	/* SR2 fixed at 8kHz, SR3 fixed at 16kHz */
	FUNC22(arizona->regmap, ARIZONA_SAMPLE_RATE_2,
			   ARIZONA_SAMPLE_RATE_2_MASK, 0x11);
	FUNC22(arizona->regmap, ARIZONA_SAMPLE_RATE_3,
			   ARIZONA_SAMPLE_RATE_3_MASK, 0x12);

	for (i = 0; i < FUNC0(cs47l24_dai); i++)
		FUNC6(&cs47l24->core, i);

	/* Latch volume update bits */
	for (i = 0; i < FUNC0(cs47l24_digital_vu); i++)
		FUNC22(arizona->regmap, cs47l24_digital_vu[i],
				   CS47L24_DIG_VU, CS47L24_DIG_VU);

	FUNC20(&pdev->dev);
	FUNC21(&pdev->dev);

	ret = FUNC11(arizona, ARIZONA_IRQ_DSP_IRQ1,
				  "ADSP2 Compressed IRQ", cs47l24_adsp2_irq,
				  cs47l24);
	if (ret != 0) {
		FUNC13(&pdev->dev, "Failed to request DSP IRQ: %d\n", ret);
		return ret;
	}

	ret = FUNC12(arizona, ARIZONA_IRQ_DSP_IRQ1, 1);
	if (ret != 0)
		FUNC16(&pdev->dev,
			 "Failed to set compressed IRQ as a wake source: %d\n",
			 ret);

	FUNC5(arizona);

	ret = FUNC9(arizona);
	if (ret < 0)
		goto err_dsp_irq;
	ret = FUNC8(arizona);
	if (ret < 0)
		goto err_dsp_irq;

	ret = FUNC18(&pdev->dev,
					      &soc_component_dev_cs47l24,
					      cs47l24_dai,
					      FUNC0(cs47l24_dai));
	if (ret < 0) {
		FUNC13(&pdev->dev, "Failed to register component: %d\n", ret);
		goto err_spk_irqs;
	}

	return ret;

err_spk_irqs:
	FUNC4(arizona);
err_dsp_irq:
	FUNC12(arizona, ARIZONA_IRQ_DSP_IRQ1, 0);
	FUNC3(arizona, ARIZONA_IRQ_DSP_IRQ1, cs47l24);

	return ret;
}
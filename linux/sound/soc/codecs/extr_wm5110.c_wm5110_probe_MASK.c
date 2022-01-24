#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
struct TYPE_18__ {int num_inputs; TYPE_1__* adsp; struct arizona* arizona; } ;
struct wm5110_priv {TYPE_14__ core; TYPE_2__* fll; } ;
struct TYPE_21__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_6__ dev; } ;
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
 TYPE_2__ ARIZONA_SAMPLE_RATE_2 ; 
 int ARIZONA_SAMPLE_RATE_2_MASK ; 
 TYPE_2__ ARIZONA_SAMPLE_RATE_3 ; 
 int ARIZONA_SAMPLE_RATE_3_MASK ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int WM5110_DIG_VU ; 
 int WM5110_NUM_ADSP ; 
 int /*<<< orphan*/  WMFW_ADSP2 ; 
 int /*<<< orphan*/  FUNC2 (struct arizona*,int /*<<< orphan*/ ,struct wm5110_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC4 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_14__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct arizona*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC7 (struct arizona*) ; 
 int FUNC8 (struct arizona*) ; 
 int FUNC9 (struct arizona*) ; 
 int FUNC10 (struct arizona*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct wm5110_priv*) ; 
 int FUNC11 (struct arizona*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,char*,int) ; 
 struct arizona* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,char*,int) ; 
 struct wm5110_priv* FUNC16 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct wm5110_priv*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_2__,int,int) ; 
 int /*<<< orphan*/  soc_component_dev_wm5110 ; 
 int /*<<< orphan*/  wm5110_adsp2_irq ; 
 TYPE_2__* wm5110_dai ; 
 TYPE_2__* wm5110_digital_vu ; 
 TYPE_2__* wm5110_dsp1_regions ; 
 int /*<<< orphan*/ * wm5110_dsp_regions ; 
 int FUNC22 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct arizona *arizona = FUNC13(pdev->dev.parent);
	struct wm5110_priv *wm5110;
	int i, ret;

	wm5110 = FUNC16(&pdev->dev, sizeof(struct wm5110_priv),
			      GFP_KERNEL);
	if (wm5110 == NULL)
		return -ENOMEM;
	FUNC18(pdev, wm5110);

	if (FUNC1(CONFIG_OF)) {
		if (!FUNC14(arizona->dev)) {
			ret = FUNC9(arizona);
			if (ret < 0)
				return ret;
		}
	}

	wm5110->core.arizona = arizona;
	wm5110->core.num_inputs = 8;

	for (i = 0; i < WM5110_NUM_ADSP; i++) {
		wm5110->core.adsp[i].part = "wm5110";
		wm5110->core.adsp[i].num = i + 1;
		wm5110->core.adsp[i].type = WMFW_ADSP2;
		wm5110->core.adsp[i].dev = arizona->dev;
		wm5110->core.adsp[i].regmap = arizona->regmap;

		wm5110->core.adsp[i].base = ARIZONA_DSP1_CONTROL_1
			+ (0x100 * i);
		wm5110->core.adsp[i].mem = wm5110_dsp_regions[i];
		wm5110->core.adsp[i].num_mems
			= FUNC0(wm5110_dsp1_regions);

		ret = FUNC22(&wm5110->core.adsp[i]);
		if (ret != 0)
			return ret;
	}

	for (i = 0; i < FUNC0(wm5110->fll); i++)
		wm5110->fll[i].vco_mult = 3;

	FUNC6(arizona, 1, ARIZONA_FLL1_CONTROL_1 - 1,
			 ARIZONA_IRQ_FLL1_LOCK, ARIZONA_IRQ_FLL1_CLOCK_OK,
			 &wm5110->fll[0]);
	FUNC6(arizona, 2, ARIZONA_FLL2_CONTROL_1 - 1,
			 ARIZONA_IRQ_FLL2_LOCK, ARIZONA_IRQ_FLL2_CLOCK_OK,
			 &wm5110->fll[1]);

	/* SR2 fixed at 8kHz, SR3 fixed at 16kHz */
	FUNC21(arizona->regmap, ARIZONA_SAMPLE_RATE_2,
			   ARIZONA_SAMPLE_RATE_2_MASK, 0x11);
	FUNC21(arizona->regmap, ARIZONA_SAMPLE_RATE_3,
			   ARIZONA_SAMPLE_RATE_3_MASK, 0x12);

	for (i = 0; i < FUNC0(wm5110_dai); i++)
		FUNC5(&wm5110->core, i);

	/* Latch volume update bits */
	for (i = 0; i < FUNC0(wm5110_digital_vu); i++)
		FUNC21(arizona->regmap, wm5110_digital_vu[i],
				   WM5110_DIG_VU, WM5110_DIG_VU);

	FUNC19(&pdev->dev);
	FUNC20(&pdev->dev);

	ret = FUNC10(arizona, ARIZONA_IRQ_DSP_IRQ1,
				  "ADSP2 Compressed IRQ", wm5110_adsp2_irq,
				  wm5110);
	if (ret != 0) {
		FUNC12(&pdev->dev, "Failed to request DSP IRQ: %d\n", ret);
		return ret;
	}

	ret = FUNC11(arizona, ARIZONA_IRQ_DSP_IRQ1, 1);
	if (ret != 0)
		FUNC15(&pdev->dev,
			 "Failed to set compressed IRQ as a wake source: %d\n",
			 ret);

	FUNC4(arizona);

	ret = FUNC8(arizona);
	if (ret < 0)
		goto err_dsp_irq;
	ret = FUNC7(arizona);
	if (ret < 0)
		goto err_dsp_irq;

	ret = FUNC17(&pdev->dev,
					      &soc_component_dev_wm5110,
					      wm5110_dai,
					      FUNC0(wm5110_dai));
	if (ret < 0) {
		FUNC12(&pdev->dev, "Failed to register component: %d\n", ret);
		goto err_spk_irqs;
	}

	return ret;

err_spk_irqs:
	FUNC3(arizona);
err_dsp_irq:
	FUNC11(arizona, ARIZONA_IRQ_DSP_IRQ1, 0);
	FUNC2(arizona, ARIZONA_IRQ_DSP_IRQ1, wm5110);

	return ret;
}
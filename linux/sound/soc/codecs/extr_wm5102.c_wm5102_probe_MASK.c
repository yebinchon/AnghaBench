#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;

/* Type definitions */
struct TYPE_19__ {int num_inputs; TYPE_1__* adsp; struct arizona* arizona; } ;
struct wm5102_priv {TYPE_14__ core; TYPE_2__* fll; } ;
struct TYPE_22__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_6__ dev; } ;
struct arizona {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  dac_comp_lock; } ;
struct TYPE_21__ {int vco_mult; } ;
struct TYPE_20__ {char* part; int num; int num_mems; TYPE_2__* mem; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  base; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_DSP1_CONTROL_1 ; 
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
 int WM5102_DIG_VU ; 
 int /*<<< orphan*/  WMFW_ADSP2 ; 
 int /*<<< orphan*/  FUNC2 (struct arizona*,int /*<<< orphan*/ ,struct wm5102_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC4 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_14__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC7 (struct arizona*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC8 (struct arizona*) ; 
 int FUNC9 (struct arizona*) ; 
 int FUNC10 (struct arizona*) ; 
 int FUNC11 (struct arizona*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct wm5102_priv*) ; 
 int FUNC12 (struct arizona*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,char*,int) ; 
 struct arizona* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,char*,int) ; 
 struct wm5102_priv* FUNC17 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct wm5102_priv*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_2__,int,int) ; 
 int /*<<< orphan*/  soc_component_dev_wm5102 ; 
 int /*<<< orphan*/  wm5102_adsp2_irq ; 
 TYPE_2__* wm5102_dai ; 
 TYPE_2__* wm5102_digital_vu ; 
 TYPE_2__* wm5102_dsp1_regions ; 
 int FUNC24 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct arizona *arizona = FUNC14(pdev->dev.parent);
	struct wm5102_priv *wm5102;
	int i, ret;

	wm5102 = FUNC17(&pdev->dev, sizeof(struct wm5102_priv),
			      GFP_KERNEL);
	if (wm5102 == NULL)
		return -ENOMEM;
	FUNC20(pdev, wm5102);

	if (FUNC1(CONFIG_OF)) {
		if (!FUNC15(arizona->dev)) {
			ret = FUNC10(arizona);
			if (ret < 0)
				return ret;
		}
	}

	FUNC19(&arizona->dac_comp_lock);

	wm5102->core.arizona = arizona;
	wm5102->core.num_inputs = 6;

	FUNC6(&wm5102->core);

	wm5102->core.adsp[0].part = "wm5102";
	wm5102->core.adsp[0].num = 1;
	wm5102->core.adsp[0].type = WMFW_ADSP2;
	wm5102->core.adsp[0].base = ARIZONA_DSP1_CONTROL_1;
	wm5102->core.adsp[0].dev = arizona->dev;
	wm5102->core.adsp[0].regmap = arizona->regmap;
	wm5102->core.adsp[0].mem = wm5102_dsp1_regions;
	wm5102->core.adsp[0].num_mems = FUNC0(wm5102_dsp1_regions);

	ret = FUNC24(&wm5102->core.adsp[0]);
	if (ret != 0)
		return ret;

	for (i = 0; i < FUNC0(wm5102->fll); i++)
		wm5102->fll[i].vco_mult = 1;

	FUNC7(arizona, 1, ARIZONA_FLL1_CONTROL_1 - 1,
			 ARIZONA_IRQ_FLL1_LOCK, ARIZONA_IRQ_FLL1_CLOCK_OK,
			 &wm5102->fll[0]);
	FUNC7(arizona, 2, ARIZONA_FLL2_CONTROL_1 - 1,
			 ARIZONA_IRQ_FLL2_LOCK, ARIZONA_IRQ_FLL2_CLOCK_OK,
			 &wm5102->fll[1]);

	/* SR2 fixed at 8kHz, SR3 fixed at 16kHz */
	FUNC23(arizona->regmap, ARIZONA_SAMPLE_RATE_2,
			   ARIZONA_SAMPLE_RATE_2_MASK, 0x11);
	FUNC23(arizona->regmap, ARIZONA_SAMPLE_RATE_3,
			   ARIZONA_SAMPLE_RATE_3_MASK, 0x12);

	for (i = 0; i < FUNC0(wm5102_dai); i++)
		FUNC5(&wm5102->core, i);

	/* Latch volume update bits */
	for (i = 0; i < FUNC0(wm5102_digital_vu); i++)
		FUNC23(arizona->regmap, wm5102_digital_vu[i],
				   WM5102_DIG_VU, WM5102_DIG_VU);

	FUNC21(&pdev->dev);
	FUNC22(&pdev->dev);

	ret = FUNC11(arizona, ARIZONA_IRQ_DSP_IRQ1,
				  "ADSP2 Compressed IRQ", wm5102_adsp2_irq,
				  wm5102);
	if (ret != 0) {
		FUNC13(&pdev->dev, "Failed to request DSP IRQ: %d\n", ret);
		return ret;
	}

	ret = FUNC12(arizona, ARIZONA_IRQ_DSP_IRQ1, 1);
	if (ret != 0)
		FUNC16(&pdev->dev,
			 "Failed to set compressed IRQ as a wake source: %d\n",
			 ret);

	FUNC4(arizona);

	ret = FUNC9(arizona);
	if (ret < 0)
		goto err_dsp_irq;
	ret = FUNC8(arizona);
	if (ret < 0)
		goto err_dsp_irq;

	ret = FUNC18(&pdev->dev,
					      &soc_component_dev_wm5102,
					      wm5102_dai,
					      FUNC0(wm5102_dai));
	if (ret < 0) {
		FUNC13(&pdev->dev, "Failed to register component: %d\n", ret);
		goto err_spk_irqs;
	}

	return ret;

err_spk_irqs:
	FUNC3(arizona);
err_dsp_irq:
	FUNC12(arizona, ARIZONA_IRQ_DSP_IRQ1, 0);
	FUNC2(arizona, ARIZONA_IRQ_DSP_IRQ1, wm5102);

	return ret;
}
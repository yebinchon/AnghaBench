#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {int num_inputs; struct arizona* arizona; } ;
struct wm8997_priv {TYPE_11__ core; TYPE_1__* fll; } ;
struct TYPE_18__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct arizona {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_17__ {int vco_mult; } ;

/* Variables and functions */
 scalar_t__ ARIZONA_FLL1_CONTROL_1 ; 
 scalar_t__ ARIZONA_FLL2_CONTROL_1 ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL1_CLOCK_OK ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL1_LOCK ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL2_CLOCK_OK ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL2_LOCK ; 
 TYPE_1__ ARIZONA_SAMPLE_RATE_2 ; 
 int ARIZONA_SAMPLE_RATE_2_MASK ; 
 TYPE_1__ ARIZONA_SAMPLE_RATE_3 ; 
 int ARIZONA_SAMPLE_RATE_3_MASK ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int WM8997_DIG_VU ; 
 int /*<<< orphan*/  FUNC2 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC3 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC6 (struct arizona*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (struct arizona*) ; 
 int FUNC8 (struct arizona*) ; 
 int FUNC9 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*,int) ; 
 struct arizona* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct wm8997_priv* FUNC13 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct wm8997_priv*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_1__,int,int) ; 
 int /*<<< orphan*/  soc_component_dev_wm8997 ; 
 TYPE_1__* wm8997_dai ; 
 TYPE_1__* wm8997_digital_vu ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct arizona *arizona = FUNC11(pdev->dev.parent);
	struct wm8997_priv *wm8997;
	int i, ret;

	wm8997 = FUNC13(&pdev->dev, sizeof(struct wm8997_priv),
			      GFP_KERNEL);
	if (wm8997 == NULL)
		return -ENOMEM;
	FUNC15(pdev, wm8997);

	if (FUNC1(CONFIG_OF)) {
		if (!FUNC12(arizona->dev)) {
			ret = FUNC9(arizona);
			if (ret < 0)
				return ret;
		}
	}

	wm8997->core.arizona = arizona;
	wm8997->core.num_inputs = 4;

	FUNC5(&wm8997->core);

	for (i = 0; i < FUNC0(wm8997->fll); i++)
		wm8997->fll[i].vco_mult = 1;

	FUNC6(arizona, 1, ARIZONA_FLL1_CONTROL_1 - 1,
			 ARIZONA_IRQ_FLL1_LOCK, ARIZONA_IRQ_FLL1_CLOCK_OK,
			 &wm8997->fll[0]);
	FUNC6(arizona, 2, ARIZONA_FLL2_CONTROL_1 - 1,
			 ARIZONA_IRQ_FLL2_LOCK, ARIZONA_IRQ_FLL2_CLOCK_OK,
			 &wm8997->fll[1]);

	/* SR2 fixed at 8kHz, SR3 fixed at 16kHz */
	FUNC18(arizona->regmap, ARIZONA_SAMPLE_RATE_2,
			   ARIZONA_SAMPLE_RATE_2_MASK, 0x11);
	FUNC18(arizona->regmap, ARIZONA_SAMPLE_RATE_3,
			   ARIZONA_SAMPLE_RATE_3_MASK, 0x12);

	for (i = 0; i < FUNC0(wm8997_dai); i++)
		FUNC4(&wm8997->core, i);

	/* Latch volume update bits */
	for (i = 0; i < FUNC0(wm8997_digital_vu); i++)
		FUNC18(arizona->regmap, wm8997_digital_vu[i],
				   WM8997_DIG_VU, WM8997_DIG_VU);

	FUNC16(&pdev->dev);
	FUNC17(&pdev->dev);

	FUNC3(arizona);

	ret = FUNC8(arizona);
	if (ret < 0)
		return ret;
	ret = FUNC7(arizona);
	if (ret < 0)
		return ret;

	ret = FUNC14(&pdev->dev,
					      &soc_component_dev_wm8997,
					      wm8997_dai,
					      FUNC0(wm8997_dai));
	if (ret < 0) {
		FUNC10(&pdev->dev, "Failed to register component: %d\n", ret);
		goto err_spk_irqs;
	}

err_spk_irqs:
	FUNC2(arizona);

	return ret;
}
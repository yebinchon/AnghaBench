#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_13__ {int num_inputs; struct arizona* arizona; } ;
struct wm8998_priv {TYPE_11__ core; TYPE_1__* fll; } ;
struct TYPE_15__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct arizona {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {int vco_mult; } ;

/* Variables and functions */
 scalar_t__ ARIZONA_FLL1_CONTROL_1 ; 
 scalar_t__ ARIZONA_FLL2_CONTROL_1 ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL1_CLOCK_OK ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL1_LOCK ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL2_CLOCK_OK ; 
 int /*<<< orphan*/  ARIZONA_IRQ_FLL2_LOCK ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM8998_DIG_VU ; 
 int /*<<< orphan*/  FUNC2 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC3 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct arizona*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (struct arizona*) ; 
 int FUNC7 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,int) ; 
 struct arizona* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct wm8998_priv* FUNC11 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct wm8998_priv*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_dev_wm8998 ; 
 TYPE_1__* wm8998_dai ; 
 TYPE_1__* wm8998_digital_vu ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct arizona *arizona = FUNC9(pdev->dev.parent);
	struct wm8998_priv *wm8998;
	int i, ret;

	wm8998 = FUNC11(&pdev->dev, sizeof(struct wm8998_priv),
			      GFP_KERNEL);
	if (!wm8998)
		return -ENOMEM;
	FUNC13(pdev, wm8998);

	if (FUNC1(CONFIG_OF)) {
		if (!FUNC10(arizona->dev)) {
			ret = FUNC7(arizona);
			if (ret < 0)
				return ret;
		}
	}

	wm8998->core.arizona = arizona;
	wm8998->core.num_inputs = 3;	/* IN1L, IN1R, IN2 */

	for (i = 0; i < FUNC0(wm8998->fll); i++)
		wm8998->fll[i].vco_mult = 1;

	FUNC5(arizona, 1, ARIZONA_FLL1_CONTROL_1 - 1,
			 ARIZONA_IRQ_FLL1_LOCK, ARIZONA_IRQ_FLL1_CLOCK_OK,
			 &wm8998->fll[0]);
	FUNC5(arizona, 2, ARIZONA_FLL2_CONTROL_1 - 1,
			 ARIZONA_IRQ_FLL2_LOCK, ARIZONA_IRQ_FLL2_CLOCK_OK,
			 &wm8998->fll[1]);

	for (i = 0; i < FUNC0(wm8998_dai); i++)
		FUNC4(&wm8998->core, i);

	/* Latch volume update bits */
	for (i = 0; i < FUNC0(wm8998_digital_vu); i++)
		FUNC16(arizona->regmap, wm8998_digital_vu[i],
				   WM8998_DIG_VU, WM8998_DIG_VU);

	FUNC14(&pdev->dev);
	FUNC15(&pdev->dev);

	FUNC3(arizona);

	ret = FUNC6(arizona);
	if (ret < 0)
		return ret;

	ret = FUNC12(&pdev->dev,
					      &soc_component_dev_wm8998,
					      wm8998_dai,
					      FUNC0(wm8998_dai));
	if (ret < 0) {
		FUNC8(&pdev->dev, "Failed to register component: %d\n", ret);
		goto err_spk_irqs;
	}

	return ret;

err_spk_irqs:
	FUNC2(arizona);

	return ret;
}
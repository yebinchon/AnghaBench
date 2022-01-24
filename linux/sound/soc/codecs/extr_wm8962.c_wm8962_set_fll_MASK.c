#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wm8962_priv {int fll_src; unsigned int fll_fref; unsigned int fll_fout; scalar_t__ irq; int /*<<< orphan*/  fll_lock; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct _fll_div {int fll_outdiv; int fll_refclk_div; int fll_fratio; scalar_t__ n; scalar_t__ lambda; scalar_t__ theta; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
#define  WM8962_FLL_BCLK 131 
 int /*<<< orphan*/  WM8962_FLL_CONTROL_1 ; 
 int /*<<< orphan*/  WM8962_FLL_CONTROL_2 ; 
 int /*<<< orphan*/  WM8962_FLL_CONTROL_3 ; 
 int /*<<< orphan*/  WM8962_FLL_CONTROL_5 ; 
 int /*<<< orphan*/  WM8962_FLL_CONTROL_6 ; 
 int /*<<< orphan*/  WM8962_FLL_CONTROL_7 ; 
 int /*<<< orphan*/  WM8962_FLL_CONTROL_8 ; 
 int WM8962_FLL_ENA ; 
 int WM8962_FLL_FRAC ; 
 int WM8962_FLL_FRATIO_MASK ; 
 int WM8962_FLL_FRC_NCO ; 
#define  WM8962_FLL_INT 130 
#define  WM8962_FLL_MCLK 129 
#define  WM8962_FLL_OSC 128 
 int WM8962_FLL_OSC_ENA ; 
 int WM8962_FLL_OUTDIV_MASK ; 
 int WM8962_FLL_OUTDIV_SHIFT ; 
 int WM8962_FLL_REFCLK_DIV_MASK ; 
 int WM8962_FLL_REFCLK_SRC_MASK ; 
 int WM8962_FLL_REFCLK_SRC_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct _fll_div*,unsigned int,unsigned int) ; 
 unsigned long FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct wm8962_priv* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component, int fll_id, int source,
			  unsigned int Fref, unsigned int Fout)
{
	struct wm8962_priv *wm8962 = FUNC7(component);
	struct _fll_div fll_div;
	unsigned long timeout;
	int ret;
	int fll1 = 0;

	/* Any change? */
	if (source == wm8962->fll_src && Fref == wm8962->fll_fref &&
	    Fout == wm8962->fll_fout)
		return 0;

	if (Fout == 0) {
		FUNC0(component->dev, "FLL disabled\n");

		wm8962->fll_fref = 0;
		wm8962->fll_fout = 0;

		FUNC8(component, WM8962_FLL_CONTROL_1,
				    WM8962_FLL_ENA, 0);

		FUNC5(component->dev);

		return 0;
	}

	ret = FUNC2(&fll_div, Fref, Fout);
	if (ret != 0)
		return ret;

	/* Parameters good, disable so we can reprogram */
	FUNC8(component, WM8962_FLL_CONTROL_1, WM8962_FLL_ENA, 0);

	switch (fll_id) {
	case WM8962_FLL_MCLK:
	case WM8962_FLL_BCLK:
	case WM8962_FLL_OSC:
		fll1 |= (fll_id - 1) << WM8962_FLL_REFCLK_SRC_SHIFT;
		break;
	case WM8962_FLL_INT:
		FUNC8(component, WM8962_FLL_CONTROL_1,
				    WM8962_FLL_OSC_ENA, WM8962_FLL_OSC_ENA);
		FUNC8(component, WM8962_FLL_CONTROL_5,
				    WM8962_FLL_FRC_NCO, WM8962_FLL_FRC_NCO);
		break;
	default:
		FUNC1(component->dev, "Unknown FLL source %d\n", ret);
		return -EINVAL;
	}

	if (fll_div.theta || fll_div.lambda)
		fll1 |= WM8962_FLL_FRAC;

	/* Stop the FLL while we reconfigure */
	FUNC8(component, WM8962_FLL_CONTROL_1, WM8962_FLL_ENA, 0);

	FUNC8(component, WM8962_FLL_CONTROL_2,
			    WM8962_FLL_OUTDIV_MASK |
			    WM8962_FLL_REFCLK_DIV_MASK,
			    (fll_div.fll_outdiv << WM8962_FLL_OUTDIV_SHIFT) |
			    (fll_div.fll_refclk_div));

	FUNC8(component, WM8962_FLL_CONTROL_3,
			    WM8962_FLL_FRATIO_MASK, fll_div.fll_fratio);

	FUNC9(component, WM8962_FLL_CONTROL_6, fll_div.theta);
	FUNC9(component, WM8962_FLL_CONTROL_7, fll_div.lambda);
	FUNC9(component, WM8962_FLL_CONTROL_8, fll_div.n);

	FUNC6(&wm8962->fll_lock);

	ret = FUNC4(component->dev);
	if (ret < 0) {
		FUNC1(component->dev, "Failed to resume device: %d\n", ret);
		return ret;
	}

	FUNC8(component, WM8962_FLL_CONTROL_1,
			    WM8962_FLL_FRAC | WM8962_FLL_REFCLK_SRC_MASK |
			    WM8962_FLL_ENA, fll1 | WM8962_FLL_ENA);

	FUNC0(component->dev, "FLL configured for %dHz->%dHz\n", Fref, Fout);

	/* This should be a massive overestimate but go even
	 * higher if we'll error out
	 */
	if (wm8962->irq)
		timeout = FUNC3(5);
	else
		timeout = FUNC3(1);

	timeout = FUNC10(&wm8962->fll_lock,
					      timeout);

	if (timeout == 0 && wm8962->irq) {
		FUNC1(component->dev, "FLL lock timed out");
		FUNC8(component, WM8962_FLL_CONTROL_1,
				    WM8962_FLL_ENA, 0);
		FUNC5(component->dev);
		return -ETIMEDOUT;
	}

	wm8962->fll_fref = Fref;
	wm8962->fll_fout = Fout;
	wm8962->fll_src = source;

	return 0;
}
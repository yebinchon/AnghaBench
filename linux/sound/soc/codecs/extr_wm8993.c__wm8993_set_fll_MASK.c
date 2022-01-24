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
typedef  int u16 ;
struct wm8993_priv {unsigned int fll_fref; unsigned int fll_fout; int fll_src; int /*<<< orphan*/  fll_lock; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct i2c_client {scalar_t__ irq; } ;
struct _fll_div {int k; int fll_outdiv; int fll_fratio; int n; int fll_clk_ref_div; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WM8993_FLL_BCLK 130 
 int WM8993_FLL_CLK_REF_DIV_MASK ; 
 int WM8993_FLL_CLK_REF_DIV_SHIFT ; 
 int WM8993_FLL_CLK_SRC_MASK ; 
 int /*<<< orphan*/  WM8993_FLL_CONTROL_1 ; 
 int /*<<< orphan*/  WM8993_FLL_CONTROL_2 ; 
 int /*<<< orphan*/  WM8993_FLL_CONTROL_3 ; 
 int /*<<< orphan*/  WM8993_FLL_CONTROL_4 ; 
 int /*<<< orphan*/  WM8993_FLL_CONTROL_5 ; 
 int WM8993_FLL_ENA ; 
 int WM8993_FLL_FRAC_MASK ; 
 int WM8993_FLL_FRATIO_SHIFT ; 
#define  WM8993_FLL_LRCLK 129 
#define  WM8993_FLL_MCLK 128 
 int WM8993_FLL_N_MASK ; 
 int WM8993_FLL_N_SHIFT ; 
 int WM8993_FLL_OUTDIV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct _fll_div*,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (int) ; 
 struct wm8993_priv* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component, int fll_id, int source,
			  unsigned int Fref, unsigned int Fout)
{
	struct wm8993_priv *wm8993 = FUNC5(component);
	struct i2c_client *i2c = FUNC8(component->dev);
	u16 reg1, reg4, reg5;
	struct _fll_div fll_div;
	unsigned int timeout;
	int ret;

	/* Any change? */
	if (Fref == wm8993->fll_fref && Fout == wm8993->fll_fout)
		return 0;

	/* Disable the FLL */
	if (Fout == 0) {
		FUNC0(component->dev, "FLL disabled\n");
		wm8993->fll_fref = 0;
		wm8993->fll_fout = 0;

		reg1 = FUNC6(component, WM8993_FLL_CONTROL_1);
		reg1 &= ~WM8993_FLL_ENA;
		FUNC7(component, WM8993_FLL_CONTROL_1, reg1);

		return 0;
	}

	ret = FUNC3(&fll_div, Fref, Fout);
	if (ret != 0)
		return ret;

	reg5 = FUNC6(component, WM8993_FLL_CONTROL_5);
	reg5 &= ~WM8993_FLL_CLK_SRC_MASK;

	switch (fll_id) {
	case WM8993_FLL_MCLK:
		break;

	case WM8993_FLL_LRCLK:
		reg5 |= 1;
		break;

	case WM8993_FLL_BCLK:
		reg5 |= 2;
		break;

	default:
		FUNC1(component->dev, "Unknown FLL ID %d\n", fll_id);
		return -EINVAL;
	}

	/* Any FLL configuration change requires that the FLL be
	 * disabled first. */
	reg1 = FUNC6(component, WM8993_FLL_CONTROL_1);
	reg1 &= ~WM8993_FLL_ENA;
	FUNC7(component, WM8993_FLL_CONTROL_1, reg1);

	/* Apply the configuration */
	if (fll_div.k)
		reg1 |= WM8993_FLL_FRAC_MASK;
	else
		reg1 &= ~WM8993_FLL_FRAC_MASK;
	FUNC7(component, WM8993_FLL_CONTROL_1, reg1);

	FUNC7(component, WM8993_FLL_CONTROL_2,
		      (fll_div.fll_outdiv << WM8993_FLL_OUTDIV_SHIFT) |
		      (fll_div.fll_fratio << WM8993_FLL_FRATIO_SHIFT));
	FUNC7(component, WM8993_FLL_CONTROL_3, fll_div.k);

	reg4 = FUNC6(component, WM8993_FLL_CONTROL_4);
	reg4 &= ~WM8993_FLL_N_MASK;
	reg4 |= fll_div.n << WM8993_FLL_N_SHIFT;
	FUNC7(component, WM8993_FLL_CONTROL_4, reg4);

	reg5 &= ~WM8993_FLL_CLK_REF_DIV_MASK;
	reg5 |= fll_div.fll_clk_ref_div << WM8993_FLL_CLK_REF_DIV_SHIFT;
	FUNC7(component, WM8993_FLL_CONTROL_5, reg5);

	/* If we've got an interrupt wired up make sure we get it */
	if (i2c->irq)
		timeout = FUNC4(20);
	else if (Fref < 1000000)
		timeout = FUNC4(3);
	else
		timeout = FUNC4(1);

	FUNC9(&wm8993->fll_lock);

	/* Enable the FLL */
	FUNC7(component, WM8993_FLL_CONTROL_1, reg1 | WM8993_FLL_ENA);

	timeout = FUNC10(&wm8993->fll_lock, timeout);
	if (i2c->irq && !timeout)
		FUNC2(component->dev, "Timed out waiting for FLL\n");

	FUNC0(component->dev, "FLL enabled at %dHz->%dHz\n", Fref, Fout);

	wm8993->fll_fref = Fref;
	wm8993->fll_fout = Fout;
	wm8993->fll_src = source;

	return 0;
}
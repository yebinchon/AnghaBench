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
struct wm8996_priv {int fll_src; unsigned int fll_fref; unsigned int fll_fout; int /*<<< orphan*/  fll_lock; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct i2c_client {scalar_t__ irq; } ;
struct _fll_div {int fll_refclk_div; int fll_ref_freq; int theta; int lambda; int fll_outdiv; int fll_fratio; int n; int fll_loop_gain; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  WM8996_FLL_BCLK1 131 
 int /*<<< orphan*/  WM8996_FLL_CONTROL_1 ; 
 int /*<<< orphan*/  WM8996_FLL_CONTROL_2 ; 
 int /*<<< orphan*/  WM8996_FLL_CONTROL_3 ; 
 int /*<<< orphan*/  WM8996_FLL_CONTROL_4 ; 
 int /*<<< orphan*/  WM8996_FLL_CONTROL_5 ; 
 int /*<<< orphan*/  WM8996_FLL_CONTROL_6 ; 
#define  WM8996_FLL_DACLRCLK1 130 
 int /*<<< orphan*/  WM8996_FLL_EFS_1 ; 
 int /*<<< orphan*/  WM8996_FLL_EFS_2 ; 
 int WM8996_FLL_EFS_ENA ; 
 int WM8996_FLL_ENA ; 
 int WM8996_FLL_FRATIO_MASK ; 
 int WM8996_FLL_LFSR_SEL_SHIFT ; 
 int WM8996_FLL_LOCK_STS ; 
 int WM8996_FLL_LOOP_GAIN_MASK ; 
#define  WM8996_FLL_MCLK1 129 
#define  WM8996_FLL_MCLK2 128 
 int WM8996_FLL_N_MASK ; 
 int WM8996_FLL_N_SHIFT ; 
 int WM8996_FLL_OUTDIV_MASK ; 
 int WM8996_FLL_OUTDIV_SHIFT ; 
 int WM8996_FLL_REFCLK_DIV_MASK ; 
 int WM8996_FLL_REFCLK_DIV_SHIFT ; 
 int WM8996_FLL_REFCLK_SRC_MASK ; 
 int WM8996_FLL_REF_FREQ ; 
 int WM8996_FLL_REF_FREQ_SHIFT ; 
 int WM8996_FLL_SWITCH_CLK ; 
 int /*<<< orphan*/  WM8996_INTERRUPT_RAW_STATUS_2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct _fll_div*,unsigned int,unsigned int) ; 
 unsigned long FUNC4 (int) ; 
 struct wm8996_priv* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC11 (int) ; 
 unsigned long FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC15(struct snd_soc_component *component, int fll_id, int source,
			  unsigned int Fref, unsigned int Fout)
{
	struct wm8996_priv *wm8996 = FUNC5(component);
	struct i2c_client *i2c = FUNC9(component->dev);
	struct _fll_div fll_div;
	unsigned long timeout, time_left;
	int ret, reg, retry;

	/* Any change? */
	if (source == wm8996->fll_src && Fref == wm8996->fll_fref &&
	    Fout == wm8996->fll_fout)
		return 0;

	if (Fout == 0) {
		FUNC1(component->dev, "FLL disabled\n");

		wm8996->fll_fref = 0;
		wm8996->fll_fout = 0;

		FUNC7(component, WM8996_FLL_CONTROL_1,
				    WM8996_FLL_ENA, 0);

		FUNC13(component);

		return 0;
	}

	ret = FUNC3(&fll_div, Fref, Fout);
	if (ret != 0)
		return ret;

	switch (source) {
	case WM8996_FLL_MCLK1:
		reg = 0;
		break;
	case WM8996_FLL_MCLK2:
		reg = 1;
		break;
	case WM8996_FLL_DACLRCLK1:
		reg = 2;
		break;
	case WM8996_FLL_BCLK1:
		reg = 3;
		break;
	default:
		FUNC2(component->dev, "Unknown FLL source %d\n", ret);
		return -EINVAL;
	}

	reg |= fll_div.fll_refclk_div << WM8996_FLL_REFCLK_DIV_SHIFT;
	reg |= fll_div.fll_ref_freq << WM8996_FLL_REF_FREQ_SHIFT;

	FUNC7(component, WM8996_FLL_CONTROL_5,
			    WM8996_FLL_REFCLK_DIV_MASK | WM8996_FLL_REF_FREQ |
			    WM8996_FLL_REFCLK_SRC_MASK, reg);

	reg = 0;
	if (fll_div.theta || fll_div.lambda)
		reg |= WM8996_FLL_EFS_ENA | (3 << WM8996_FLL_LFSR_SEL_SHIFT);
	else
		reg |= 1 << WM8996_FLL_LFSR_SEL_SHIFT;
	FUNC8(component, WM8996_FLL_EFS_2, reg);

	FUNC7(component, WM8996_FLL_CONTROL_2,
			    WM8996_FLL_OUTDIV_MASK |
			    WM8996_FLL_FRATIO_MASK,
			    (fll_div.fll_outdiv << WM8996_FLL_OUTDIV_SHIFT) |
			    (fll_div.fll_fratio));

	FUNC8(component, WM8996_FLL_CONTROL_3, fll_div.theta);

	FUNC7(component, WM8996_FLL_CONTROL_4,
			    WM8996_FLL_N_MASK | WM8996_FLL_LOOP_GAIN_MASK,
			    (fll_div.n << WM8996_FLL_N_SHIFT) |
			    fll_div.fll_loop_gain);

	FUNC8(component, WM8996_FLL_EFS_1, fll_div.lambda);

	/* Enable the bandgap if it's not already enabled */
	ret = FUNC6(component, WM8996_FLL_CONTROL_1);
	if (!(ret & WM8996_FLL_ENA))
		FUNC14(component);

	/* Clear any pending completions (eg, from failed startups) */
	FUNC10(&wm8996->fll_lock);

	FUNC7(component, WM8996_FLL_CONTROL_1,
			    WM8996_FLL_ENA, WM8996_FLL_ENA);

	/* The FLL supports live reconfiguration - kick that in case we were
	 * already enabled.
	 */
	FUNC8(component, WM8996_FLL_CONTROL_6, WM8996_FLL_SWITCH_CLK);

	/* Wait for the FLL to lock, using the interrupt if possible */
	if (Fref > 1000000)
		timeout = FUNC11(300);
	else
		timeout = FUNC4(2);

	/* Allow substantially longer if we've actually got the IRQ, poll
	 * at a slightly higher rate if we don't.
	 */
	if (i2c->irq)
		timeout *= 10;
	else
		/* ensure timeout of atleast 1 jiffies */
		timeout = timeout/2 ? : 1;

	for (retry = 0; retry < 10; retry++) {
		time_left = FUNC12(&wm8996->fll_lock,
							timeout);
		if (time_left != 0) {
			FUNC0(!i2c->irq);
			ret = 1;
			break;
		}

		ret = FUNC6(component, WM8996_INTERRUPT_RAW_STATUS_2);
		if (ret & WM8996_FLL_LOCK_STS)
			break;
	}
	if (retry == 10) {
		FUNC2(component->dev, "Timed out waiting for FLL\n");
		ret = -ETIMEDOUT;
	}

	FUNC1(component->dev, "FLL configured for %dHz->%dHz\n", Fref, Fout);

	wm8996->fll_fref = Fref;
	wm8996->fll_fout = Fout;
	wm8996->fll_src = source;

	return ret;
}
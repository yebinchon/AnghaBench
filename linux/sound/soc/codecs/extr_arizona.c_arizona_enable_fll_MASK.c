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
struct arizona_fll_cfg {int lambda; int theta; } ;
struct arizona_fll {int ref_freq; int sync_freq; int id; scalar_t__ base; int /*<<< orphan*/  sync_src; int /*<<< orphan*/  ref_src; struct arizona* arizona; } ;
struct arizona {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ARIZONA_FLL1_CLOCK_OK_STS ; 
 int /*<<< orphan*/  ARIZONA_FLL1_ENA ; 
 int /*<<< orphan*/  ARIZONA_FLL1_FREERUN ; 
 int /*<<< orphan*/  ARIZONA_FLL1_GAIN_MASK ; 
 int /*<<< orphan*/  ARIZONA_FLL1_SYNC_BW ; 
 int /*<<< orphan*/  ARIZONA_FLL1_SYNC_ENA ; 
 int /*<<< orphan*/  ARIZONA_INTERRUPT_RAW_STATUS_5 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct arizona*,scalar_t__,struct arizona_fll_cfg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct arizona_fll*,struct arizona_fll_cfg*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct arizona_fll*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct arizona_fll*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct arizona_fll*,char*) ; 
 int FUNC5 (struct arizona_fll*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct arizona_fll*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct arizona_fll *fll)
{
	struct arizona *arizona = fll->arizona;
	bool use_sync = false;
	int already_enabled = FUNC5(fll, fll->base);
	int sync_enabled = FUNC5(fll, fll->base + 0x10);
	struct arizona_fll_cfg cfg;
	int i;
	unsigned int val;

	if (already_enabled < 0)
		return already_enabled;
	if (sync_enabled < 0)
		return sync_enabled;

	if (already_enabled) {
		/* Facilitate smooth refclk across the transition */
		FUNC10(fll->arizona->regmap, fll->base + 1,
				   ARIZONA_FLL1_FREERUN, ARIZONA_FLL1_FREERUN);
		FUNC12(32);
		FUNC11(fll->arizona->regmap, fll->base + 0x9,
					 ARIZONA_FLL1_GAIN_MASK, 0);

		if (FUNC5(fll, fll->base + 0x10) > 0)
			FUNC6(fll, fll->base + 0x10, false);
		FUNC6(fll, fll->base, false);
	}

	/*
	 * If we have both REFCLK and SYNCCLK then enable both,
	 * otherwise apply the SYNCCLK settings to REFCLK.
	 */
	if (fll->ref_src >= 0 && fll->ref_freq &&
	    fll->ref_src != fll->sync_src) {
		FUNC1(fll, &cfg, fll->ref_freq, false);

		/* Ref path hardcodes lambda to 65536 when sync is on */
		if (fll->sync_src >= 0 && cfg.lambda)
			cfg.theta = (cfg.theta * (1 << 16)) / cfg.lambda;

		FUNC0(arizona, fll->base, &cfg, fll->ref_src,
				  false);
		if (fll->sync_src >= 0) {
			FUNC1(fll, &cfg, fll->sync_freq, true);

			FUNC0(arizona, fll->base + 0x10, &cfg,
					  fll->sync_src, true);
			use_sync = true;
		}
	} else if (fll->sync_src >= 0) {
		FUNC1(fll, &cfg, fll->sync_freq, false);

		FUNC0(arizona, fll->base, &cfg,
				  fll->sync_src, false);

		FUNC11(arizona->regmap, fll->base + 0x11,
					 ARIZONA_FLL1_SYNC_ENA, 0);
	} else {
		FUNC3(fll, "No clocks provided\n");
		return -EINVAL;
	}

	if (already_enabled && !!sync_enabled != use_sync)
		FUNC4(fll, "Synchroniser changed on active FLL\n");

	/*
	 * Increase the bandwidth if we're not using a low frequency
	 * sync source.
	 */
	if (use_sync && fll->sync_freq > 100000)
		FUNC11(arizona->regmap, fll->base + 0x17,
					 ARIZONA_FLL1_SYNC_BW, 0);
	else
		FUNC11(arizona->regmap, fll->base + 0x17,
					 ARIZONA_FLL1_SYNC_BW,
					 ARIZONA_FLL1_SYNC_BW);

	if (!already_enabled)
		FUNC8(arizona->dev);

	if (use_sync) {
		FUNC6(fll, fll->base + 0x10, true);
		FUNC11(arizona->regmap, fll->base + 0x11,
					 ARIZONA_FLL1_SYNC_ENA,
					 ARIZONA_FLL1_SYNC_ENA);
	}
	FUNC6(fll, fll->base, true);
	FUNC11(arizona->regmap, fll->base + 1,
				 ARIZONA_FLL1_ENA, ARIZONA_FLL1_ENA);

	if (already_enabled)
		FUNC11(arizona->regmap, fll->base + 1,
					 ARIZONA_FLL1_FREERUN, 0);

	FUNC2(fll, "Waiting for FLL lock...\n");
	val = 0;
	for (i = 0; i < 15; i++) {
		if (i < 5)
			FUNC13(200, 400);
		else
			FUNC7(20);

		FUNC9(arizona->regmap,
			    ARIZONA_INTERRUPT_RAW_STATUS_5,
			    &val);
		if (val & (ARIZONA_FLL1_CLOCK_OK_STS << (fll->id - 1)))
			break;
	}
	if (i == 15)
		FUNC4(fll, "Timed out waiting for lock\n");
	else
		FUNC2(fll, "FLL locked (%d polls)\n", i);

	return 0;
}
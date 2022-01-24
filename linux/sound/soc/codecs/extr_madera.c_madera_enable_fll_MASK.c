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
struct madera_fll_cfg {int gain; int lambda; int theta; int alt_gain; } ;
struct madera_fll {unsigned int base; scalar_t__ ref_src; scalar_t__ ref_freq; scalar_t__ fout; scalar_t__ sync_src; scalar_t__ sync_freq; struct madera* madera; } ;
struct madera {int type; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  rev; } ;

/* Variables and functions */
#define  CS47L35 130 
 int /*<<< orphan*/  CS47L35_FLL_SYNCHRONISER_OFFS ; 
#define  CS47L85 129 
 int EINVAL ; 
 int /*<<< orphan*/  MADERA_FLL1_ENA ; 
 int /*<<< orphan*/  MADERA_FLL1_FREERUN ; 
 int /*<<< orphan*/  MADERA_FLL1_GAIN_MASK ; 
 int /*<<< orphan*/  MADERA_FLL1_SYNC_DFSAT ; 
 int /*<<< orphan*/  MADERA_FLL1_SYNC_DFSAT_MASK ; 
 int /*<<< orphan*/  MADERA_FLL1_SYNC_ENA ; 
 scalar_t__ MADERA_FLL_CONTROL_1_OFFS ; 
 scalar_t__ MADERA_FLL_CONTROL_7_OFFS ; 
 scalar_t__ MADERA_FLL_MAX_FOUT ; 
 scalar_t__ MADERA_FLL_MIN_FOUT ; 
 scalar_t__ MADERA_FLL_SYNCHRONISER_1_OFFS ; 
 scalar_t__ MADERA_FLL_SYNCHRONISER_7_OFFS ; 
 int /*<<< orphan*/  MADERA_FLL_SYNCHRONISER_OFFS ; 
#define  WM1840 128 
 int FUNC0 (struct madera_fll*,struct madera_fll_cfg*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct madera_fll*) ; 
 int /*<<< orphan*/  FUNC2 (struct madera_fll*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct madera_fll*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct madera_fll*,char*) ; 
 int FUNC5 (struct madera_fll*,unsigned int) ; 
 int FUNC6 (struct madera_fll*,struct madera_fll_cfg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct madera_fll*,int) ; 
 int FUNC8 (struct madera*,unsigned int,struct madera_fll_cfg*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct madera_fll *fll)
{
	struct madera *madera = fll->madera;
	bool have_sync = false;
	int already_enabled = FUNC5(fll, fll->base);
	int sync_enabled;
	struct madera_fll_cfg cfg;
	unsigned int sync_base;
	int gain, ret;
	bool fll_change = false;

	if (already_enabled < 0)
		return already_enabled;	/* error getting current state */

	if (fll->ref_src < 0 || fll->ref_freq == 0) {
		FUNC3(fll, "No REFCLK\n");
		ret = -EINVAL;
		goto err;
	}

	FUNC2(fll, "Enabling FLL, initially %s\n",
		       already_enabled ? "enabled" : "disabled");

	if (fll->fout < MADERA_FLL_MIN_FOUT ||
	    fll->fout > MADERA_FLL_MAX_FOUT) {
		FUNC3(fll, "invalid fout %uHz\n", fll->fout);
		ret = -EINVAL;
		goto err;
	}

	switch (madera->type) {
	case CS47L35:
		sync_base = fll->base + CS47L35_FLL_SYNCHRONISER_OFFS;
		break;
	default:
		sync_base = fll->base + MADERA_FLL_SYNCHRONISER_OFFS;
		break;
	}

	sync_enabled = FUNC5(fll, sync_base);
	if (sync_enabled < 0)
		return sync_enabled;

	if (already_enabled) {
		/* Facilitate smooth refclk across the transition */
		FUNC10(fll->madera->regmap,
				   fll->base + MADERA_FLL_CONTROL_1_OFFS,
				   MADERA_FLL1_FREERUN,
				   MADERA_FLL1_FREERUN);
		FUNC11(32);
		FUNC10(fll->madera->regmap,
				   fll->base + MADERA_FLL_CONTROL_7_OFFS,
				   MADERA_FLL1_GAIN_MASK, 0);
	}

	/* Apply SYNCCLK setting */
	if (fll->sync_src >= 0) {
		ret = FUNC0(fll, &cfg, fll->sync_freq, true);
		if (ret < 0)
			goto err;

		fll_change |= FUNC8(madera, sync_base,
					       &cfg, fll->sync_src,
					       true, cfg.gain);
		have_sync = true;
	}

	if (already_enabled && !!sync_enabled != have_sync)
		FUNC4(fll, "Synchroniser changed on active FLL\n");

	/* Apply REFCLK setting */
	ret = FUNC0(fll, &cfg, fll->ref_freq, false);
	if (ret < 0)
		goto err;

	/* Ref path hardcodes lambda to 65536 when sync is on */
	if (have_sync && cfg.lambda)
		cfg.theta = (cfg.theta * (1 << 16)) / cfg.lambda;

	switch (fll->madera->type) {
	case CS47L35:
		switch (fll->madera->rev) {
		case 0:
			gain = cfg.gain;
			break;
		default:
			fll_change |=
				FUNC6(fll, &cfg,
								have_sync);
			if (!have_sync && cfg.theta == 0)
				gain = cfg.alt_gain;
			else
				gain = cfg.gain;
			break;
		}
		break;
	case CS47L85:
	case WM1840:
		gain = cfg.gain;
		break;
	default:
		fll_change |= FUNC6(fll, &cfg,
							      have_sync);
		if (!have_sync && cfg.theta == 0)
			gain = cfg.alt_gain;
		else
			gain = cfg.gain;
		break;
	}

	fll_change |= FUNC8(madera, fll->base,
				       &cfg, fll->ref_src,
				       false, gain);

	/*
	 * Increase the bandwidth if we're not using a low frequency
	 * sync source.
	 */
	if (have_sync && fll->sync_freq > 100000)
		FUNC10(madera->regmap,
				   sync_base + MADERA_FLL_SYNCHRONISER_7_OFFS,
				   MADERA_FLL1_SYNC_DFSAT_MASK, 0);
	else
		FUNC10(madera->regmap,
				   sync_base + MADERA_FLL_SYNCHRONISER_7_OFFS,
				   MADERA_FLL1_SYNC_DFSAT_MASK,
				   MADERA_FLL1_SYNC_DFSAT);

	if (!already_enabled)
		FUNC9(madera->dev);

	if (have_sync)
		FUNC10(madera->regmap,
				   sync_base + MADERA_FLL_SYNCHRONISER_1_OFFS,
				   MADERA_FLL1_SYNC_ENA,
				   MADERA_FLL1_SYNC_ENA);
	FUNC10(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_1_OFFS,
			   MADERA_FLL1_ENA, MADERA_FLL1_ENA);

	if (already_enabled)
		FUNC10(madera->regmap,
				   fll->base + MADERA_FLL_CONTROL_1_OFFS,
				   MADERA_FLL1_FREERUN, 0);

	if (fll_change || !already_enabled)
		FUNC7(fll, true);

	return 0;

err:
	 /* In case of error don't leave the FLL running with an old config */
	FUNC1(fll);

	return ret;
}
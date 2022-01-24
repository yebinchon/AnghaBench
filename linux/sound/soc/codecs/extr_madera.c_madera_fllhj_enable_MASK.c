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
struct madera_fll {int ref_src; scalar_t__ base; int /*<<< orphan*/  ref_freq; struct madera* madera; } ;
struct madera {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CS47L92_FLL1_REFCLK_SRC_MASK ; 
 int CS47L92_FLL1_REFCLK_SRC_SHIFT ; 
 int MADERA_FLL1_CTRL_UPD_MASK ; 
 int MADERA_FLL1_ENA_MASK ; 
 int MADERA_FLL1_HOLD_MASK ; 
 int MADERA_FLL1_LOCKDET_MASK ; 
 scalar_t__ MADERA_FLL_CONTROL_11_OFFS ; 
 scalar_t__ MADERA_FLL_CONTROL_1_OFFS ; 
 scalar_t__ MADERA_FLL_CONTROL_2_OFFS ; 
 int /*<<< orphan*/  FUNC0 (struct madera_fll*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct madera_fll*,char*,int) ; 
 int FUNC2 (struct madera_fll*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct madera_fll*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct madera_fll*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC7(struct madera_fll *fll)
{
	struct madera *madera = fll->madera;
	int already_enabled = FUNC3(fll, fll->base);
	int ret;

	if (already_enabled < 0)
		return already_enabled;

	if (!already_enabled)
		FUNC5(madera->dev);

	FUNC0(fll, "Enabling FLL, initially %s\n",
		       already_enabled ? "enabled" : "disabled");

	/* FLLn_HOLD must be set before configuring any registers */
	FUNC6(fll->madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_1_OFFS,
			   MADERA_FLL1_HOLD_MASK,
			   MADERA_FLL1_HOLD_MASK);

	/* Apply refclk */
	ret = FUNC2(fll, fll->ref_freq);
	if (ret) {
		FUNC1(fll, "Failed to set FLL: %d\n", ret);
		goto out;
	}
	FUNC6(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_1_OFFS,
			   CS47L92_FLL1_REFCLK_SRC_MASK,
			   fll->ref_src << CS47L92_FLL1_REFCLK_SRC_SHIFT);

	FUNC6(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_1_OFFS,
			   MADERA_FLL1_ENA_MASK,
			   MADERA_FLL1_ENA_MASK);

out:
	FUNC6(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_11_OFFS,
			   MADERA_FLL1_LOCKDET_MASK,
			   MADERA_FLL1_LOCKDET_MASK);

	FUNC6(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_2_OFFS,
			   MADERA_FLL1_CTRL_UPD_MASK,
			   MADERA_FLL1_CTRL_UPD_MASK);

	/* Release the hold so that flln locks to external frequency */
	FUNC6(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_1_OFFS,
			   MADERA_FLL1_HOLD_MASK,
			   0);

	if (!already_enabled)
		FUNC4(fll, true);

	return 0;
}
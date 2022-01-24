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
struct madera_fll {scalar_t__ base; struct madera* madera; } ;
struct madera {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MADERA_FLL1_CTRL_UPD_MASK ; 
 int /*<<< orphan*/  MADERA_FLL1_ENA_MASK ; 
 int /*<<< orphan*/  MADERA_FLL1_HOLD_MASK ; 
 int /*<<< orphan*/  MADERA_FLL1_LOCKDET_MASK ; 
 scalar_t__ MADERA_FLL_CONTROL_11_OFFS ; 
 scalar_t__ MADERA_FLL_CONTROL_1_OFFS ; 
 scalar_t__ MADERA_FLL_CONTROL_2_OFFS ; 
 int /*<<< orphan*/  FUNC0 (struct madera_fll*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct madera_fll*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct madera_fll *fll)
{
	struct madera *madera = fll->madera;
	bool change;

	FUNC0(fll, "Disabling FLL\n");

	/* Disable lockdet, but don't set ctrl_upd update but.  This allows the
	 * lock status bit to clear as normal, but should the FLL be enabled
	 * again due to a control clock being required, the lock won't re-assert
	 * as the FLL config registers are automatically applied when the FLL
	 * enables.
	 */
	FUNC3(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_11_OFFS,
			   MADERA_FLL1_LOCKDET_MASK, 0);
	FUNC3(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_1_OFFS,
			   MADERA_FLL1_HOLD_MASK, MADERA_FLL1_HOLD_MASK);
	FUNC4(madera->regmap,
				 fll->base + MADERA_FLL_CONTROL_1_OFFS,
				 MADERA_FLL1_ENA_MASK, 0, &change);

	FUNC1(fll, false);

	/* ctrl_up gates the writes to all the fll's registers, setting it to 0
	 * here ensures that after a runtime suspend/resume cycle when one
	 * enables the fll then ctrl_up is the last bit that is configured
	 * by the fll enable code rather than the cache sync operation which
	 * would have updated it much earlier before writing out all fll
	 * registers
	 */
	FUNC3(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_2_OFFS,
			   MADERA_FLL1_CTRL_UPD_MASK, 0);

	if (change)
		FUNC2(madera->dev);

	return 0;
}
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
struct madera_fll {unsigned int base; struct madera* madera; } ;
struct madera {int type; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
#define  CS47L35 128 
 unsigned int CS47L35_FLL_SYNCHRONISER_OFFS ; 
 int /*<<< orphan*/  MADERA_FLL1_ENA ; 
 int /*<<< orphan*/  MADERA_FLL1_FREERUN ; 
 int /*<<< orphan*/  MADERA_FLL1_SYNC_ENA ; 
 unsigned int MADERA_FLL_CONTROL_1_OFFS ; 
 unsigned int MADERA_FLL_SYNCHRONISER_1_OFFS ; 
 unsigned int MADERA_FLL_SYNCHRONISER_OFFS ; 
 int /*<<< orphan*/  FUNC0 (struct madera_fll*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct madera_fll*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC5(struct madera_fll *fll)
{
	struct madera *madera = fll->madera;
	unsigned int sync_base;
	bool change;

	switch (madera->type) {
	case CS47L35:
		sync_base = fll->base + CS47L35_FLL_SYNCHRONISER_OFFS;
		break;
	default:
		sync_base = fll->base + MADERA_FLL_SYNCHRONISER_OFFS;
		break;
	}

	FUNC0(fll, "Disabling FLL\n");

	FUNC3(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_1_OFFS,
			   MADERA_FLL1_FREERUN, MADERA_FLL1_FREERUN);
	FUNC4(madera->regmap,
				 fll->base + MADERA_FLL_CONTROL_1_OFFS,
				 MADERA_FLL1_ENA, 0, &change);
	FUNC3(madera->regmap,
			   sync_base + MADERA_FLL_SYNCHRONISER_1_OFFS,
			   MADERA_FLL1_SYNC_ENA, 0);
	FUNC3(madera->regmap,
			   fll->base + MADERA_FLL_CONTROL_1_OFFS,
			   MADERA_FLL1_FREERUN, 0);

	FUNC1(fll, false);

	if (change)
		FUNC2(madera->dev);
}
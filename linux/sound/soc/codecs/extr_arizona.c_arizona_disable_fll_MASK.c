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
struct arizona_fll {scalar_t__ base; struct arizona* arizona; } ;
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_FLL1_ENA ; 
 int /*<<< orphan*/  ARIZONA_FLL1_FREERUN ; 
 int /*<<< orphan*/  ARIZONA_FLL1_SYNC_ENA ; 
 int /*<<< orphan*/  FUNC0 (struct arizona_fll*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC4(struct arizona_fll *fll)
{
	struct arizona *arizona = fll->arizona;
	bool ref_change, sync_change;

	FUNC2(arizona->regmap, fll->base + 1,
				 ARIZONA_FLL1_FREERUN, ARIZONA_FLL1_FREERUN);
	FUNC3(arizona->regmap, fll->base + 1,
				 ARIZONA_FLL1_ENA, 0, &ref_change);
	FUNC3(arizona->regmap, fll->base + 0x11,
				 ARIZONA_FLL1_SYNC_ENA, 0, &sync_change);
	FUNC2(arizona->regmap, fll->base + 1,
				 ARIZONA_FLL1_FREERUN, 0);

	if (sync_change)
		FUNC0(fll, fll->base + 0x10, false);

	if (ref_change) {
		FUNC0(fll, fll->base, false);
		FUNC1(arizona->dev);
	}
}
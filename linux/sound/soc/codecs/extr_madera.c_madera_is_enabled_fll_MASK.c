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
struct madera_fll {struct madera* madera; } ;
struct madera {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int MADERA_FLL1_ENA ; 
 scalar_t__ MADERA_FLL_CONTROL_1_OFFS ; 
 int /*<<< orphan*/  FUNC0 (struct madera_fll*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct madera_fll *fll, int base)
{
	struct madera *madera = fll->madera;
	unsigned int reg;
	int ret;

	ret = FUNC1(madera->regmap,
			  base + MADERA_FLL_CONTROL_1_OFFS, &reg);
	if (ret != 0) {
		FUNC0(fll, "Failed to read current state: %d\n", ret);
		return ret;
	}

	return reg & MADERA_FLL1_ENA;
}
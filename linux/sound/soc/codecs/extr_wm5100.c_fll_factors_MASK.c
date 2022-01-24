#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct _fll_div {unsigned int fll_outdiv; unsigned int n; unsigned int theta; unsigned int lambda; int /*<<< orphan*/  fll_refclk_div; int /*<<< orphan*/  fll_fratio; } ;
struct TYPE_3__ {unsigned int min; unsigned int max; unsigned int ratio; int /*<<< orphan*/  fll_fratio; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* fll_fratios ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct _fll_div *fll_div, unsigned int Fref,
		       unsigned int Fout)
{
	unsigned int target;
	unsigned int div;
	unsigned int fratio, gcd_fll;
	int i;

	/* Fref must be <=13.5MHz */
	div = 1;
	fll_div->fll_refclk_div = 0;
	while ((Fref / div) > 13500000) {
		div *= 2;
		fll_div->fll_refclk_div++;

		if (div > 8) {
			FUNC3("Can't scale %dMHz input down to <=13.5MHz\n",
			       Fref);
			return -EINVAL;
		}
	}

	FUNC2("FLL Fref=%u Fout=%u\n", Fref, Fout);

	/* Apply the division for our remaining calculations */
	Fref /= div;

	/* Fvco should be 90-100MHz; don't check the upper bound */
	div = 2;
	while (Fout * div < 90000000) {
		div++;
		if (div > 64) {
			FUNC3("Unable to find FLL_OUTDIV for Fout=%uHz\n",
			       Fout);
			return -EINVAL;
		}
	}
	target = Fout * div;
	fll_div->fll_outdiv = div - 1;

	FUNC2("FLL Fvco=%dHz\n", target);

	/* Find an appropraite FLL_FRATIO and factor it out of the target */
	for (i = 0; i < FUNC0(fll_fratios); i++) {
		if (fll_fratios[i].min <= Fref && Fref <= fll_fratios[i].max) {
			fll_div->fll_fratio = fll_fratios[i].fll_fratio;
			fratio = fll_fratios[i].ratio;
			break;
		}
	}
	if (i == FUNC0(fll_fratios)) {
		FUNC3("Unable to find FLL_FRATIO for Fref=%uHz\n", Fref);
		return -EINVAL;
	}

	fll_div->n = target / (fratio * Fref);

	if (target % Fref == 0) {
		fll_div->theta = 0;
		fll_div->lambda = 0;
	} else {
		gcd_fll = FUNC1(target, fratio * Fref);

		fll_div->theta = (target - (fll_div->n * fratio * Fref))
			/ gcd_fll;
		fll_div->lambda = (fratio * Fref) / gcd_fll;
	}

	FUNC2("FLL N=%x THETA=%x LAMBDA=%x\n",
		 fll_div->n, fll_div->theta, fll_div->lambda);
	FUNC2("FLL_FRATIO=%x(%d) FLL_OUTDIV=%x FLL_REFCLK_DIV=%x\n",
		 fll_div->fll_fratio, fratio, fll_div->fll_outdiv,
		 fll_div->fll_refclk_div);

	return 0;
}
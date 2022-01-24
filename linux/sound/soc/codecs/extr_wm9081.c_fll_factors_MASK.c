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
typedef  int u64 ;
struct _fll_div {unsigned int fll_clk_ref_div; unsigned int fll_outdiv; unsigned int n; unsigned int k; int /*<<< orphan*/  fll_fratio; } ;
struct TYPE_3__ {unsigned int min; unsigned int max; unsigned int ratio; int /*<<< orphan*/  fll_fratio; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 long long FIXED_FLL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 TYPE_1__* fll_fratios ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct _fll_div *fll_div, unsigned int Fref,
		       unsigned int Fout)
{
	u64 Kpart;
	unsigned int K, Ndiv, Nmod, target;
	unsigned int div;
	int i;

	/* Fref must be <=13.5MHz */
	div = 1;
	while ((Fref / div) > 13500000) {
		div *= 2;

		if (div > 8) {
			FUNC3("Can't scale %dMHz input down to <=13.5MHz\n",
			       Fref);
			return -EINVAL;
		}
	}
	fll_div->fll_clk_ref_div = div / 2;

	FUNC2("Fref=%u Fout=%u\n", Fref, Fout);

	/* Apply the division for our remaining calculations */
	Fref /= div;

	/* Fvco should be 90-100MHz; don't check the upper bound */
	div = 0;
	target = Fout * 2;
	while (target < 90000000) {
		div++;
		target *= 2;
		if (div > 7) {
			FUNC3("Unable to find FLL_OUTDIV for Fout=%uHz\n",
			       Fout);
			return -EINVAL;
		}
	}
	fll_div->fll_outdiv = div;

	FUNC2("Fvco=%dHz\n", target);

	/* Find an appropriate FLL_FRATIO and factor it out of the target */
	for (i = 0; i < FUNC0(fll_fratios); i++) {
		if (fll_fratios[i].min <= Fref && Fref <= fll_fratios[i].max) {
			fll_div->fll_fratio = fll_fratios[i].fll_fratio;
			target /= fll_fratios[i].ratio;
			break;
		}
	}
	if (i == FUNC0(fll_fratios)) {
		FUNC3("Unable to find FLL_FRATIO for Fref=%uHz\n", Fref);
		return -EINVAL;
	}

	/* Now, calculate N.K */
	Ndiv = target / Fref;

	fll_div->n = Ndiv;
	Nmod = target % Fref;
	FUNC2("Nmod=%d\n", Nmod);

	/* Calculate fractional part - scale up so we can round. */
	Kpart = FIXED_FLL_SIZE * (long long)Nmod;

	FUNC1(Kpart, Fref);

	K = Kpart & 0xFFFFFFFF;

	if ((K % 10) >= 5)
		K += 5;

	/* Move down to proper range now rounding is done */
	fll_div->k = K / 10;

	FUNC2("N=%x K=%x FLL_FRATIO=%x FLL_OUTDIV=%x FLL_CLK_REF_DIV=%x\n",
		 fll_div->n, fll_div->k,
		 fll_div->fll_fratio, fll_div->fll_outdiv,
		 fll_div->fll_clk_ref_div);

	return 0;
}
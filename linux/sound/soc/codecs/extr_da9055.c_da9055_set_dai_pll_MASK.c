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
typedef  size_t u8 ;
struct snd_soc_dai {int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct da9055_priv {scalar_t__ master; } ;
struct TYPE_3__ {unsigned int fref; scalar_t__ mode; unsigned int fout; size_t frac_top; size_t frac_bot; size_t integer; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DA9055_PLL_CTRL ; 
 int /*<<< orphan*/  DA9055_PLL_EN ; 
 int /*<<< orphan*/  DA9055_PLL_FRAC_BOT ; 
 int /*<<< orphan*/  DA9055_PLL_FRAC_TOP ; 
 int /*<<< orphan*/  DA9055_PLL_INTEGER ; 
 int EINVAL ; 
 TYPE_1__* da9055_pll_div ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct da9055_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *codec_dai, int pll_id,
			      int source, unsigned int fref, unsigned int fout)
{
	struct snd_soc_component *component = codec_dai->component;
	struct da9055_priv *da9055 = FUNC2(component);

	u8 pll_frac_top, pll_frac_bot, pll_integer, cnt;

	/* Disable PLL before setting the divisors */
	FUNC3(component, DA9055_PLL_CTRL, DA9055_PLL_EN, 0);

	/* In slave mode, there is only one set of divisors */
	if (!da9055->master && (fout != 2822400))
		goto pll_err;

	/* Search pll div array for correct divisors */
	for (cnt = 0; cnt < FUNC0(da9055_pll_div); cnt++) {
		/* Check fref, mode  and fout */
		if ((fref == da9055_pll_div[cnt].fref) &&
		    (da9055->master ==  da9055_pll_div[cnt].mode) &&
		    (fout == da9055_pll_div[cnt].fout)) {
			/* All match, pick up divisors */
			pll_frac_top = da9055_pll_div[cnt].frac_top;
			pll_frac_bot = da9055_pll_div[cnt].frac_bot;
			pll_integer = da9055_pll_div[cnt].integer;
			break;
		}
	}
	if (cnt >= FUNC0(da9055_pll_div))
		goto pll_err;

	/* Write PLL dividers */
	FUNC4(component, DA9055_PLL_FRAC_TOP, pll_frac_top);
	FUNC4(component, DA9055_PLL_FRAC_BOT, pll_frac_bot);
	FUNC4(component, DA9055_PLL_INTEGER, pll_integer);

	return 0;
pll_err:
	FUNC1(codec_dai->dev, "Error in setting up PLL\n");
	return -EINVAL;
}
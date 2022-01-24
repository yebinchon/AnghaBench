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
struct rsnd_priv {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_adg {unsigned int* clk_rate; unsigned int rbga_rate_for_441khz; unsigned int rbgb_rate_for_48khz; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 size_t CLKA ; 
 size_t CLKB ; 
 size_t CLKC ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct rsnd_adg* FUNC3 (struct rsnd_priv*) ; 
 struct device* FUNC4 (struct rsnd_priv*) ; 

__attribute__((used)) static void FUNC5(struct rsnd_priv *priv,
				       struct rsnd_dai_stream *io,
				       unsigned int target_rate,
				       unsigned int *target_val,
				       unsigned int *target_en)
{
	struct rsnd_adg *adg = FUNC3(priv);
	struct device *dev = FUNC4(priv);
	int idx, sel, div, step;
	unsigned int val, en;
	unsigned int min, diff;
	unsigned int sel_rate[] = {
		adg->clk_rate[CLKA],	/* 0000: CLKA */
		adg->clk_rate[CLKB],	/* 0001: CLKB */
		adg->clk_rate[CLKC],	/* 0010: CLKC */
		adg->rbga_rate_for_441khz,	/* 0011: RBGA */
		adg->rbgb_rate_for_48khz,	/* 0100: RBGB */
	};

	min = ~0;
	val = 0;
	en = 0;
	for (sel = 0; sel < FUNC0(sel_rate); sel++) {
		idx = 0;
		step = 2;

		if (!sel_rate[sel])
			continue;

		for (div = 2; div <= 98304; div += step) {
			diff = FUNC1(target_rate - sel_rate[sel] / div);
			if (min > diff) {
				val = (sel << 8) | idx;
				min = diff;
				en = 1 << (sel + 1); /* fixme */
			}

			/*
			 * step of 0_0000 / 0_0001 / 0_1101
			 * are out of order
			 */
			if ((idx > 2) && (idx % 2))
				step *= 2;
			if (idx == 0x1c) {
				div += step;
				step *= 2;
			}
			idx++;
		}
	}

	if (min == ~0) {
		FUNC2(dev, "no Input clock\n");
		return;
	}

	*target_val = val;
	if (target_en)
		*target_en = en;
}
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
struct wm8960_priv {int bclk; int lrclk; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int* bclk_divs ; 
 int* dac_divs ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct wm8960_priv* FUNC2 (struct snd_soc_component*) ; 
 int* sysclk_divs ; 

__attribute__((used)) static
int FUNC3(struct snd_soc_component *component, int freq_in,
			 int *sysclk_idx, int *dac_idx, int *bclk_idx)
{
	struct wm8960_priv *wm8960 = FUNC2(component);
	int sysclk, bclk, lrclk, freq_out;
	int diff, closest, best_freq_out;
	int i, j, k;

	bclk = wm8960->bclk;
	lrclk = wm8960->lrclk;
	closest = freq_in;

	best_freq_out = -EINVAL;
	*sysclk_idx = *dac_idx = *bclk_idx = -1;

	for (i = 0; i < FUNC0(sysclk_divs); ++i) {
		if (sysclk_divs[i] == -1)
			continue;
		for (j = 0; j < FUNC0(dac_divs); ++j) {
			sysclk = lrclk * dac_divs[j];
			freq_out = sysclk * sysclk_divs[i];

			for (k = 0; k < FUNC0(bclk_divs); ++k) {
				if (!FUNC1(freq_in, freq_out))
					continue;

				diff = sysclk - bclk * bclk_divs[k] / 10;
				if (diff == 0) {
					*sysclk_idx = i;
					*dac_idx = j;
					*bclk_idx = k;
					return freq_out;
				}
				if (diff > 0 && closest > diff) {
					*sysclk_idx = i;
					*dac_idx = j;
					*bclk_idx = k;
					closest = diff;
					best_freq_out = freq_out;
				}
			}
		}
	}

	return best_freq_out;
}
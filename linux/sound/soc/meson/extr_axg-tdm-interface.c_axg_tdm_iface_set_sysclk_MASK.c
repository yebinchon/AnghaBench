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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct axg_tdm_iface {unsigned int mclk_rate; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int SND_SOC_CLOCK_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct axg_tdm_iface* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, int clk_id,
				    unsigned int freq, int dir)
{
	struct axg_tdm_iface *iface = FUNC2(dai);
	int ret = -ENOTSUPP;

	if (dir == SND_SOC_CLOCK_OUT && clk_id == 0) {
		if (!iface->mclk) {
			FUNC1(dai->dev, "master clock not provided\n");
		} else {
			ret = FUNC0(iface->mclk, freq);
			if (!ret)
				iface->mclk_rate = freq;
		}
	}

	return ret;
}
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
struct snd_pcm_hw_params {int dummy; } ;
struct axg_tdm_iface {unsigned long slots; unsigned long slot_width; unsigned long mclk_rate; int /*<<< orphan*/  fmt; int /*<<< orphan*/  sclk; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 unsigned long FUNC4 (struct snd_pcm_hw_params*) ; 
 struct axg_tdm_iface* FUNC5 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dai *dai,
				  struct snd_pcm_hw_params *params)
{
	struct axg_tdm_iface *iface = FUNC5(dai);
	unsigned long srate;
	int ret;

	srate = iface->slots * iface->slot_width * FUNC4(params);

	if (!iface->mclk_rate) {
		/* If no specific mclk is requested, default to bit clock * 4 */
		FUNC2(iface->mclk, 4 * srate);
	} else {
		/* Check if we can actually get the bit clock from mclk */
		if (iface->mclk_rate % srate) {
			FUNC3(dai->dev,
				"can't derive sclk %lu from mclk %lu\n",
				srate, iface->mclk_rate);
			return -EINVAL;
		}
	}

	ret = FUNC2(iface->sclk, srate);
	if (ret) {
		FUNC3(dai->dev, "setting bit clock failed: %d\n", ret);
		return ret;
	}

	/* Set the bit clock inversion */
	ret = FUNC1(iface->sclk,
			    FUNC0(iface->fmt) ? 0 : 180);
	if (ret) {
		FUNC3(dai->dev, "setting bit clock phase failed: %d\n", ret);
		return ret;
	}

	return ret;
}
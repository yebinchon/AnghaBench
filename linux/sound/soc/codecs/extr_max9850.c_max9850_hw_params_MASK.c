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
typedef  int u8 ;
typedef  int u64 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct max9850_priv {int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX9850_CLOCK ; 
 int /*<<< orphan*/  MAX9850_DIGITAL_AUDIO ; 
 int /*<<< orphan*/  MAX9850_LRCLK_LSB ; 
 int /*<<< orphan*/  MAX9850_LRCLK_MSB ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 struct max9850_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params,
			     struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct max9850_priv *max9850 = FUNC3(component);
	u64 lrclk_div;
	u8 sf, da;

	if (!max9850->sysclk)
		return -EINVAL;

	/* lrclk_div = 2^22 * rate / iclk with iclk = mclk / sf */
	sf = (FUNC4(component, MAX9850_CLOCK) >> 2) + 1;
	lrclk_div = (1 << 22);
	lrclk_div *= FUNC1(params);
	lrclk_div *= sf;
	FUNC0(lrclk_div, max9850->sysclk);

	FUNC6(component, MAX9850_LRCLK_MSB, (lrclk_div >> 8) & 0x7f);
	FUNC6(component, MAX9850_LRCLK_LSB, lrclk_div & 0xff);

	switch (FUNC2(params)) {
	case 16:
		da = 0;
		break;
	case 20:
		da = 0x2;
		break;
	case 24:
		da = 0x3;
		break;
	default:
		return -EINVAL;
	}
	FUNC5(component, MAX9850_DIGITAL_AUDIO, 0x3, da);

	return 0;
}
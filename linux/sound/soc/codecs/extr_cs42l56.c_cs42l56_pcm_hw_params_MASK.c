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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs42l56_private {int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS42L56_CLKCTL_2 ; 
 int /*<<< orphan*/  CS42L56_CLK_RATIO_MASK ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 struct cs42l56_private* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				     struct snd_pcm_hw_params *params,
				     struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct cs42l56_private *cs42l56 = FUNC3(component);
	int ratio;

	ratio = FUNC0(cs42l56->mclk, FUNC2(params));
	if (ratio >= 0) {
		FUNC4(component, CS42L56_CLKCTL_2,
				    CS42L56_CLK_RATIO_MASK, ratio);
	} else {
		FUNC1(component->dev, "unsupported mclk/sclk/lrclk ratio\n");
		return -EINVAL;
	}

	return 0;
}
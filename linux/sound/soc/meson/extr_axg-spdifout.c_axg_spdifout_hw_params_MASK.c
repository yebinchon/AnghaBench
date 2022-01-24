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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_spdifout {int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_hw_params*,struct snd_soc_dai*) ; 
 int FUNC1 (struct snd_pcm_hw_params*,struct snd_soc_dai*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC4 (struct snd_pcm_hw_params*) ; 
 struct axg_spdifout* FUNC5 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *params,
				  struct snd_soc_dai *dai)
{
	struct axg_spdifout *priv = FUNC5(dai);
	unsigned int rate = FUNC4(params);
	int ret;

	/* 2 * 32bits per subframe * 2 channels = 128 */
	ret = FUNC2(priv->mclk, rate * 128);
	if (ret) {
		FUNC3(dai->dev, "failed to set spdif clock\n");
		return ret;
	}

	ret = FUNC0(params, dai);
	if (ret) {
		FUNC3(dai->dev, "failed to setup sample format\n");
		return ret;
	}

	ret = FUNC1(params, dai);
	if (ret) {
		FUNC3(dai->dev, "failed to setup channel status words\n");
		return ret;
	}

	return 0;
}
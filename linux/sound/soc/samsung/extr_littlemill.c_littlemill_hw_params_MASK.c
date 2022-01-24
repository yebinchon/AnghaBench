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
struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  WM8994_FLL1 ; 
 int /*<<< orphan*/  WM8994_FLL_SRC_MCLK2 ; 
 int /*<<< orphan*/  WM8994_SYSCLK_FLL1 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int sample_rate ; 
 int FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	int ret;

	sample_rate = FUNC0(params);

	ret = FUNC2(codec_dai, WM8994_FLL1,
				  WM8994_FLL_SRC_MCLK2, 32768,
				  sample_rate * 512);
	if (ret < 0) {
		FUNC1("Failed to start FLL: %d\n", ret);
		return ret;
	}

	ret = FUNC3(codec_dai,
				     WM8994_SYSCLK_FLL1,
				     sample_rate * 512,
				     SND_SOC_CLOCK_IN);
	if (ret < 0) {
		FUNC1("Failed to set SYSCLK: %d\n", ret);
		return ret;
	}

	return 0;
}
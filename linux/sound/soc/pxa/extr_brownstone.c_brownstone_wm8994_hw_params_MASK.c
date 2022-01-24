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
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMP_SSPA_CLK ; 
 int /*<<< orphan*/  MMP_SSPA_CLK_AUDIO ; 
 int /*<<< orphan*/  MMP_SYSCLK ; 
 int /*<<< orphan*/  WM8994_SYSCLK_MCLK1 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
				       struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	int freq_out, sspa_mclk, sysclk;

	if (FUNC0(params) > 11025) {
		freq_out  = FUNC0(params) * 512;
		sysclk    = FUNC0(params) * 256;
		sspa_mclk = FUNC0(params) * 64;
	} else {
		freq_out  = FUNC0(params) * 1024;
		sysclk    = FUNC0(params) * 512;
		sspa_mclk = FUNC0(params) * 64;
	}

	FUNC2(cpu_dai, MMP_SSPA_CLK_AUDIO, freq_out, 0);
	FUNC1(cpu_dai, MMP_SYSCLK, 0, freq_out, sysclk);
	FUNC1(cpu_dai, MMP_SSPA_CLK, 0, freq_out, sspa_mclk);

	/* set wm8994 sysclk */
	FUNC2(codec_dai, WM8994_SYSCLK_MCLK1, sysclk, 0);

	return 0;
}
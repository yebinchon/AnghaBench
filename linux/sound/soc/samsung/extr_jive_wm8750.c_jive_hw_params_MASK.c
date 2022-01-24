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
struct s3c_i2sv2_rate_calc {scalar_t__ clk_div; scalar_t__ fs_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2412_DIV_PRESCALER ; 
 int /*<<< orphan*/  S3C2412_DIV_RCLK ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  WM8750_SYSCLK ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c_i2sv2_rate_calc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			  struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	struct s3c_i2sv2_rate_calc div;
	unsigned int clk = 0;
	int ret = 0;

	switch (FUNC0(params)) {
	case 8000:
	case 16000:
	case 48000:
	case 96000:
		clk = 12288000;
		break;
	case 11025:
	case 22050:
	case 44100:
		clk = 11289600;
		break;
	}

	FUNC2(&div, NULL, FUNC0(params),
				FUNC1(cpu_dai));

	/* set the codec system clock for DAC and ADC */
	ret = FUNC4(codec_dai, WM8750_SYSCLK, clk,
				     SND_SOC_CLOCK_IN);
	if (ret < 0)
		return ret;

	ret = FUNC3(cpu_dai, S3C2412_DIV_RCLK, div.fs_div);
	if (ret < 0)
		return ret;

	ret = FUNC3(cpu_dai, S3C2412_DIV_PRESCALER,
				     div.clk_div - 1);
	if (ret < 0)
		return ret;

	return 0;
}
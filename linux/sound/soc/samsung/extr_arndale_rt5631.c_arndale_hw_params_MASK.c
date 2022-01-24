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
struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAMSUNG_I2S_CDCLK ; 
 int /*<<< orphan*/  SAMSUNG_I2S_RCLKSRC_0 ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_OUT ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	int rfs, ret;
	unsigned long rclk;

	rfs = 256;

	rclk = FUNC0(params) * rfs;

	ret = FUNC1(cpu_dai, SAMSUNG_I2S_CDCLK,
					0, SND_SOC_CLOCK_OUT);
	if (ret < 0)
		return ret;

	ret = FUNC1(cpu_dai, SAMSUNG_I2S_RCLKSRC_0,
					0, SND_SOC_CLOCK_OUT);

	if (ret < 0)
		return ret;

	ret = FUNC1(codec_dai, 0, rclk, SND_SOC_CLOCK_OUT);
	if (ret < 0)
		return ret;

	return 0;
}
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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  da7219_dai_bclk ; 
 int /*<<< orphan*/  da7219_dai_wclk ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			     int wclk_rate, int bclk_rate)
{
	int ret = 0;
	struct snd_soc_pcm_runtime *rtd = substream->private_data;

	FUNC1(da7219_dai_wclk, wclk_rate);
	FUNC1(da7219_dai_bclk, bclk_rate);
	ret = FUNC0(da7219_dai_bclk);
	if (ret < 0) {
		FUNC2(rtd->dev, "can't enable master clock %d\n", ret);
		return ret;
	}

	return ret;
}
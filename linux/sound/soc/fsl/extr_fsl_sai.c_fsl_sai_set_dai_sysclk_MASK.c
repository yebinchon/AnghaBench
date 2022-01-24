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

/* Variables and functions */
 int /*<<< orphan*/  FSL_FMT_RECEIVER ; 
 int /*<<< orphan*/  FSL_FMT_TRANSMITTER ; 
 int SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_soc_dai*,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *cpu_dai,
		int clk_id, unsigned int freq, int dir)
{
	int ret;

	if (dir == SND_SOC_CLOCK_IN)
		return 0;

	ret = FUNC1(cpu_dai, clk_id, freq,
					FSL_FMT_TRANSMITTER);
	if (ret) {
		FUNC0(cpu_dai->dev, "Cannot set tx sysclk: %d\n", ret);
		return ret;
	}

	ret = FUNC1(cpu_dai, clk_id, freq,
					FSL_FMT_RECEIVER);
	if (ret)
		FUNC0(cpu_dai->dev, "Cannot set rx sysclk: %d\n", ret);

	return ret;
}
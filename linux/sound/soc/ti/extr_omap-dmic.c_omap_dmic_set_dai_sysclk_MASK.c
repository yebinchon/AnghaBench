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
struct snd_soc_dai {int dummy; } ;
struct omap_dmic {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int SND_SOC_CLOCK_IN ; 
 int SND_SOC_CLOCK_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct omap_dmic*,int,unsigned int) ; 
 int FUNC2 (struct omap_dmic*,int,unsigned int) ; 
 struct omap_dmic* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai, int clk_id,
				    unsigned int freq, int dir)
{
	struct omap_dmic *dmic = FUNC3(dai);

	if (dir == SND_SOC_CLOCK_IN)
		return FUNC1(dmic, clk_id, freq);
	else if (dir == SND_SOC_CLOCK_OUT)
		return FUNC2(dmic, clk_id, freq);

	FUNC0(dmic->dev, "invalid clock direction (%d)\n", dir);
	return -EINVAL;
}
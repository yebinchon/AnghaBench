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
struct psc_dma {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_soc_dai*,int) ; 
 struct psc_dma* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *cpu_dai,
			      int clk_id, unsigned int freq, int dir)
{
	struct psc_dma *psc_dma = FUNC1(cpu_dai);
	FUNC0(psc_dma->dev, "psc_i2s_set_sysclk(cpu_dai=%p, dir=%i)\n",
				cpu_dai, dir);
	return (dir == SND_SOC_CLOCK_IN) ? 0 : -EINVAL;
}
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
struct snd_gus_card {int dummy; } ;
struct snd_card {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ SNDRV_AUTO_DMA ; 
 scalar_t__ SNDRV_AUTO_IRQ ; 
 int /*<<< orphan*/ * channels ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__* dma1 ; 
 scalar_t__* gf1_irq ; 
 int /*<<< orphan*/ * gf1_port ; 
 int /*<<< orphan*/ * pcm_channels ; 
 int FUNC1 (struct snd_card*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_gus_card**) ; 
 scalar_t__ FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int*) ; 

__attribute__((used)) static int FUNC4(struct snd_card *card,
					  struct device *dev, unsigned int n,
					  struct snd_gus_card **rgus)
{
	static int possible_irqs[] = {11, 12, 15, 9, 5, 7, 3, -1};
	static int possible_dmas[] = {5, 6, 7, 3, 1, -1};

	if (gf1_irq[n] == SNDRV_AUTO_IRQ) {
		gf1_irq[n] = FUNC3(possible_irqs);
		if (gf1_irq[n] < 0) {
			FUNC0(dev, "unable to find a free IRQ for GF1\n");
			return -EBUSY;
		}
	}
	if (dma1[n] == SNDRV_AUTO_DMA) {
		dma1[n] = FUNC2(possible_dmas);
		if (dma1[n] < 0) {
			FUNC0(dev, "unable to find a free DMA for GF1\n");
			return -EBUSY;
		}
	}
	return FUNC1(card, gf1_port[n], gf1_irq[n], dma1[n], -1,
			0, channels[n], pcm_channels[n], 0, rgus);
}
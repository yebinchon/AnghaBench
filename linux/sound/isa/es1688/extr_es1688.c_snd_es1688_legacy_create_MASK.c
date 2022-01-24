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
struct snd_es1688 {int dummy; } ;
struct snd_card {struct snd_es1688* private_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (long*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  ES1688_HW_AUTO ; 
 scalar_t__ SNDRV_AUTO_DMA ; 
 scalar_t__ SNDRV_AUTO_IRQ ; 
 long SNDRV_AUTO_PORT ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__* dma8 ; 
 scalar_t__* irq ; 
 int /*<<< orphan*/ * mpu_irq ; 
 int /*<<< orphan*/ * mpu_port ; 
 long* port ; 
 int FUNC2 (struct snd_card*,struct snd_es1688*,long,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*) ; 

__attribute__((used)) static int FUNC5(struct snd_card *card,
				    struct device *dev, unsigned int n)
{
	struct snd_es1688 *chip = card->private_data;
	static long possible_ports[] = {0x220, 0x240, 0x260};
	static int possible_irqs[] = {5, 9, 10, 7, -1};
	static int possible_dmas[] = {1, 3, 0, -1};

	int i, error;

	if (irq[n] == SNDRV_AUTO_IRQ) {
		irq[n] = FUNC4(possible_irqs);
		if (irq[n] < 0) {
			FUNC1(dev, "unable to find a free IRQ\n");
			return -EBUSY;
		}
	}
	if (dma8[n] == SNDRV_AUTO_DMA) {
		dma8[n] = FUNC3(possible_dmas);
		if (dma8[n] < 0) {
			FUNC1(dev, "unable to find a free DMA\n");
			return -EBUSY;
		}
	}

	if (port[n] != SNDRV_AUTO_PORT)
		return FUNC2(card, chip, port[n], mpu_port[n],
				irq[n], mpu_irq[n], dma8[n], ES1688_HW_AUTO);

	i = 0;
	do {
		port[n] = possible_ports[i];
		error = FUNC2(card, chip, port[n], mpu_port[n],
				irq[n], mpu_irq[n], dma8[n], ES1688_HW_AUTO);
	} while (error < 0 && ++i < FUNC0(possible_ports));

	return error;
}
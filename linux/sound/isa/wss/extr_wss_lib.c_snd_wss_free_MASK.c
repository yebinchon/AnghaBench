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
struct snd_wss {scalar_t__ irq; int hwshare; scalar_t__ dma1; scalar_t__ dma2; scalar_t__ timer; int /*<<< orphan*/  card; int /*<<< orphan*/  res_cport; int /*<<< orphan*/  res_port; } ;

/* Variables and functions */
 int WSS_HWSHARE_DMA1 ; 
 int WSS_HWSHARE_DMA2 ; 
 int WSS_HWSHARE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_wss*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct snd_wss *chip)
{
	FUNC4(chip->res_port);
	FUNC4(chip->res_cport);
	if (chip->irq >= 0) {
		FUNC0(chip->irq);
		if (!(chip->hwshare & WSS_HWSHARE_IRQ))
			FUNC2(chip->irq, (void *) chip);
	}
	if (!(chip->hwshare & WSS_HWSHARE_DMA1) && chip->dma1 >= 0) {
		FUNC6(chip->dma1);
		FUNC1(chip->dma1);
	}
	if (!(chip->hwshare & WSS_HWSHARE_DMA2) &&
	    chip->dma2 >= 0 && chip->dma2 != chip->dma1) {
		FUNC6(chip->dma2);
		FUNC1(chip->dma2);
	}
	if (chip->timer)
		FUNC5(chip->card, chip->timer);
	FUNC3(chip);
	return 0;
}
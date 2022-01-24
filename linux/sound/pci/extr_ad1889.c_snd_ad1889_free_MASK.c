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
struct snd_ad1889 {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  iobase; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int AD_CHAN_ADC ; 
 int AD_CHAN_WAV ; 
 int /*<<< orphan*/  AD_DMA_DISR ; 
 int AD_DMA_DISR_PMAI ; 
 int AD_DMA_DISR_PTAI ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ad1889*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1889*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ad1889*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ad1889*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct snd_ad1889*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ad1889*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct snd_ad1889 *chip)
{
	if (chip->irq < 0)
		goto skip_hw;

	FUNC9(&chip->lock);

	FUNC1(chip);

	/* Turn off interrupt on count and zero DMA registers */
	FUNC0(chip, AD_CHAN_WAV | AD_CHAN_ADC);

	/* clear DISR. If we don't, we'd better jump off the Eiffel Tower */
	FUNC3(chip, AD_DMA_DISR, AD_DMA_DISR_PTAI | AD_DMA_DISR_PMAI);
	FUNC2(chip, AD_DMA_DISR);	/* flush, dammit! */

	FUNC10(&chip->lock);

	if (chip->irq >= 0)
		FUNC4(chip->irq, chip);

skip_hw:
	FUNC5(chip->iobase);
	FUNC8(chip->pci);
	FUNC7(chip->pci);
	FUNC6(chip);
	return 0;
}
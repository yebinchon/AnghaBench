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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  format; } ;
struct snd_es18xx {int /*<<< orphan*/  dma1; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC1 ; 
 int DMA_AUTOINIT ; 
 int DMA_MODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_es18xx*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_es18xx*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_es18xx*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_es18xx*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct snd_pcm_substream*) ; 
 unsigned int FUNC9 (struct snd_pcm_substream*) ; 
 struct snd_es18xx* FUNC10 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream)
{
        struct snd_es18xx *chip = FUNC10(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int size = FUNC8(substream);
	unsigned int count = FUNC9(substream);

	FUNC4(chip);

        /* Set stereo/mono */
        FUNC2(chip, 0xA8, 0x03, runtime->channels == 1 ? 0x02 : 0x01);

        FUNC3(chip, substream, ADC1);

        /* Transfer Count Reload */
	count = 0x10000 - count;
	FUNC5(chip, 0xA4, count & 0xff);
	FUNC5(chip, 0xA5, count >> 8);

#ifdef AVOID_POPS
	mdelay(100);
#endif

        /* Set format */
        FUNC5(chip, 0xB7, 
                         FUNC6(runtime->format) ? 0x51 : 0x71);
        FUNC5(chip, 0xB7, 0x90 |
                         ((runtime->channels == 1) ? 0x40 : 0x08) |
                         (FUNC7(runtime->format) == 16 ? 0x04 : 0x00) |
                         (FUNC6(runtime->format) ? 0x00 : 0x20));

        /* Set DMA controller */
        FUNC1(chip->dma1, runtime->dma_addr, size, DMA_MODE_READ | DMA_AUTOINIT);

	return 0;
}
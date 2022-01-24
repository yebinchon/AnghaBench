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
struct snd_es1688 {unsigned int dma_size; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  dma8; } ;

/* Variables and functions */
 int DMA_AUTOINIT ; 
 int DMA_MODE_READ ; 
 int /*<<< orphan*/  ES1688_DSP_CMD_SPKOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_es1688*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_es1688*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_es1688*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_es1688*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_es1688*,int,unsigned char) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct snd_pcm_substream*) ; 
 unsigned int FUNC8 (struct snd_pcm_substream*) ; 
 struct snd_es1688* FUNC9 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct snd_pcm_substream *substream)
{
	unsigned long flags;
	struct snd_es1688 *chip = FUNC9(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int size = FUNC7(substream);
	unsigned int count = FUNC8(substream);

	chip->dma_size = size;
	FUNC10(&chip->reg_lock, flags);
	FUNC3(chip);
	FUNC4(chip, substream);
	FUNC1(chip, ES1688_DSP_CMD_SPKOFF);
	FUNC5(chip, 0xb8, 0x0e);	/* auto init DMA mode */
	FUNC5(chip, 0xa8, (FUNC2(chip, 0xa8) & ~0x03) | (3 - runtime->channels));
	FUNC5(chip, 0xb9, 2);	/* demand mode (4 bytes/request) */
	if (runtime->channels == 1) {
		if (FUNC6(runtime->format) == 8) {
			/* 8. bit mono */
			FUNC5(chip, 0xb7, 0x51);
			FUNC5(chip, 0xb7, 0xd0);
		} else {
			/* 16. bit mono */
			FUNC5(chip, 0xb7, 0x71);
			FUNC5(chip, 0xb7, 0xf4);
		}
	} else {
		if (FUNC6(runtime->format) == 8) {
			/* 8. bit stereo */
			FUNC5(chip, 0xb7, 0x51);
			FUNC5(chip, 0xb7, 0x98);
		} else {
			/* 16. bit stereo */
			FUNC5(chip, 0xb7, 0x71);
			FUNC5(chip, 0xb7, 0xbc);
		}
	}
	FUNC5(chip, 0xb1, (FUNC2(chip, 0xb1) & 0x0f) | 0x50);
	FUNC5(chip, 0xb2, (FUNC2(chip, 0xb2) & 0x0f) | 0x50);
	FUNC11(&chip->reg_lock, flags);
	/* --- */
	count = -count;
	FUNC0(chip->dma8, runtime->dma_addr, size, DMA_MODE_READ | DMA_AUTOINIT);
	FUNC10(&chip->reg_lock, flags);
	FUNC5(chip, 0xa4, (unsigned char) count);
	FUNC5(chip, 0xa5, (unsigned char) (count >> 8));
	FUNC11(&chip->reg_lock, flags);
	return 0;
}
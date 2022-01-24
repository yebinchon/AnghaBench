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
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  format; int /*<<< orphan*/  dma_addr; } ;
struct es1938 {unsigned int dma2_size; int dma2_shift; int /*<<< orphan*/  dma2_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC2 ; 
 int /*<<< orphan*/  ESSSB_IREG_AUDIO2CONTROL2 ; 
 int /*<<< orphan*/  ESSSB_IREG_AUDIO2TCOUNTH ; 
 int /*<<< orphan*/  ESSSB_IREG_AUDIO2TCOUNTL ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct es1938*) ; 
 int /*<<< orphan*/  FUNC2 (struct es1938*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct es1938*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct snd_pcm_substream*) ; 
 unsigned int FUNC7 (struct snd_pcm_substream*) ; 
 struct es1938* FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct es1938 *chip = FUNC8(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int u, is8, mono;
	unsigned int size = FUNC6(substream);
	unsigned int count = FUNC7(substream);

	chip->dma2_size = size;
	chip->dma2_start = runtime->dma_addr;

	mono = (runtime->channels > 1) ? 0 : 1;
	is8 = FUNC5(runtime->format) == 16 ? 0 : 1;
	u = FUNC4(runtime->format);

	chip->dma2_shift = 2 - mono - is8;

        FUNC3(chip);

	/* set clock and counters */
        FUNC2(chip, substream, DAC2);

	count >>= 1;
	count = 0x10000 - count;
	FUNC0(chip, ESSSB_IREG_AUDIO2TCOUNTL, count & 0xff);
	FUNC0(chip, ESSSB_IREG_AUDIO2TCOUNTH, count >> 8);

	/* initialize and configure Audio 2 DAC */
	FUNC0(chip, ESSSB_IREG_AUDIO2CONTROL2, 0x40 | (u ? 0 : 4) |
			       (mono ? 0 : 2) | (is8 ? 0 : 1));

	/* program DMA */
	FUNC1(chip);
	
	return 0;
}
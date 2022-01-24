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
struct snd_pcm_substream {scalar_t__ number; } ;
struct snd_es18xx {int caps; int active; int dma2_shift; int dma1_shift; int /*<<< orphan*/  dma1; int /*<<< orphan*/  dma2; } ;
typedef  int snd_pcm_uframes_t ;

/* Variables and functions */
 int DAC1 ; 
 int DAC2 ; 
 int ES18XX_PCM2 ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct snd_pcm_substream*) ; 
 struct snd_es18xx* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *substream)
{
        struct snd_es18xx *chip = FUNC2(substream);
	unsigned int size = FUNC1(substream);
	int pos;

	if (substream->number == 0 && (chip->caps & ES18XX_PCM2)) {
		if (!(chip->active & DAC2))
			return 0;
		pos = FUNC0(chip->dma2, size);
		return pos >> chip->dma2_shift;
	} else {
		if (!(chip->active & DAC1))
			return 0;
		pos = FUNC0(chip->dma1, size);
		return pos >> chip->dma1_shift;
	}
}
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
struct snd_pcm_substream {int dummy; } ;
struct snd_es18xx {int active; int dma1_shift; int /*<<< orphan*/  dma1; } ;
typedef  int snd_pcm_uframes_t ;

/* Variables and functions */
 int ADC1 ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct snd_pcm_substream*) ; 
 struct snd_es18xx* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *substream)
{
        struct snd_es18xx *chip = FUNC2(substream);
	unsigned int size = FUNC1(substream);
	int pos;

        if (!(chip->active & ADC1))
                return 0;
	pos = FUNC0(chip->dma1, size);
	return pos >> chip->dma1_shift;
}
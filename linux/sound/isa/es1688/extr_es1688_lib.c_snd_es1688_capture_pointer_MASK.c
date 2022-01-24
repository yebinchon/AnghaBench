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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct snd_es1688 {int trigger_value; int /*<<< orphan*/  dma_size; int /*<<< orphan*/  dma8; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_es1688* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_es1688 *chip = FUNC2(substream);
	size_t ptr;
	
	if (chip->trigger_value != 0x0f)
		return 0;
	ptr = FUNC1(chip->dma8, chip->dma_size);
	return FUNC0(substream->runtime, ptr);
}
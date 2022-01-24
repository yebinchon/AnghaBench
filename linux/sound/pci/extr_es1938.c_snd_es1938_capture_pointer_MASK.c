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
struct es1938 {int dma1_size; size_t dma1_start; size_t last_capture_dmaaddr; size_t dma1_shift; } ;
typedef  size_t snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMAADDR ; 
 int /*<<< orphan*/  DMACOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 struct es1938* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream *substream)
{
	struct es1938 *chip = FUNC3(substream);
	size_t ptr;
#if 0
	size_t old, new;
	/* This stuff is *needed*, don't ask why - AB */
	old = inw(SLDM_REG(chip, DMACOUNT));
	while ((new = inw(SLDM_REG(chip, DMACOUNT))) != old)
		old = new;
	ptr = chip->dma1_size - 1 - new;
#else
	size_t count;
	unsigned int diff;

	ptr = FUNC1(FUNC0(chip, DMAADDR));
	count = FUNC2(FUNC0(chip, DMACOUNT));
	diff = chip->dma1_start + chip->dma1_size - ptr - count;

	if (diff > 3 || ptr < chip->dma1_start
	      || ptr >= chip->dma1_start+chip->dma1_size)
	  ptr = chip->last_capture_dmaaddr;            /* bad, use last saved */
	else
	  chip->last_capture_dmaaddr = ptr;            /* good, remember it */

	ptr -= chip->dma1_start;
#endif
	return ptr >> chip->dma1_shift;
}
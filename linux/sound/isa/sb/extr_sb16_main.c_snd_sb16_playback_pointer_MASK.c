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
struct snd_sb {int mode; unsigned int dma8; unsigned int dma16; int /*<<< orphan*/  p_dma_size; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int SB_MODE_PLAYBACK_8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 struct snd_sb* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_sb *chip = FUNC2(substream);
	unsigned int dma;
	size_t ptr;

	dma = (chip->mode & SB_MODE_PLAYBACK_8) ? chip->dma8 : chip->dma16;
	ptr = FUNC1(dma, chip->p_dma_size);
	return FUNC0(substream->runtime, ptr);
}
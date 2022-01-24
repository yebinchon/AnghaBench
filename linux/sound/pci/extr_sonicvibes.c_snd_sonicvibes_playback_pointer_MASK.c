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
struct sonicvibes {int enable; size_t p_dma_size; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 struct sonicvibes* FUNC1 (struct snd_pcm_substream*) ; 
 size_t FUNC2 (struct sonicvibes*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *substream)
{
	struct sonicvibes *sonic = FUNC1(substream);
	size_t ptr;

	if (!(sonic->enable & 1))
		return 0;
	ptr = sonic->p_dma_size - FUNC2(sonic);
	return FUNC0(substream->runtime, ptr);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vortex_t ;
struct snd_pcm_substream {TYPE_6__* runtime; int /*<<< orphan*/  pcm; } ;
struct TYPE_8__ {int dma; } ;
typedef  TYPE_2__ stream_t ;
typedef  scalar_t__ snd_pcm_uframes_t ;
struct TYPE_9__ {scalar_t__ buffer_size; scalar_t__ private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VORTEX_PCM_WT ; 
 scalar_t__ FUNC1 (TYPE_6__*,scalar_t__) ; 
 TYPE_1__* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC7(struct snd_pcm_substream *substream)
{
	vortex_t *chip = FUNC2(substream);
	stream_t *stream = (stream_t *) substream->runtime->private_data;
	int dma = stream->dma;
	snd_pcm_uframes_t current_ptr = 0;

	FUNC3(&chip->lock);
	if (FUNC0(substream->pcm) != VORTEX_PCM_WT)
		current_ptr = FUNC5(chip, dma);
#ifndef CHIP_AU8810
	else
		current_ptr = FUNC6(chip, dma);
#endif
	//printk(KERN_INFO "vortex: pointer = 0x%x\n", current_ptr);
	FUNC4(&chip->lock);
	current_ptr = FUNC1(substream->runtime, current_ptr);
	if (current_ptr >= substream->runtime->buffer_size)
		current_ptr = 0;
	return current_ptr;
}
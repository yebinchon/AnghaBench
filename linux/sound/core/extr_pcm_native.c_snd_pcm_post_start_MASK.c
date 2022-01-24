#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw_ptr_buffer_jiffies; int buffer_size; int rate; scalar_t__ silence_size; TYPE_1__* status; int /*<<< orphan*/  hw_ptr_jiffies; } ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_MSTART ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static void FUNC3(struct snd_pcm_substream *substream, int state)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	FUNC2(substream);
	runtime->hw_ptr_jiffies = jiffies;
	runtime->hw_ptr_buffer_jiffies = (runtime->buffer_size * HZ) / 
							    runtime->rate;
	runtime->status->state = state;
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK &&
	    runtime->silence_size > 0)
		FUNC0(substream, ULONG_MAX);
	FUNC1(substream, SNDRV_TIMER_EVENT_MSTART);
}
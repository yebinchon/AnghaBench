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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; scalar_t__ period_size; struct emu10k1x_pcm* private_data; } ;
struct emu10k1x_pcm {int /*<<< orphan*/  running; TYPE_1__* voice; } ;
struct emu10k1x {int dummy; } ;
typedef  scalar_t__ snd_pcm_uframes_t ;
struct TYPE_2__ {int number; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLAYBACK_LIST_PTR ; 
 int /*<<< orphan*/  PLAYBACK_POINTER ; 
 scalar_t__ FUNC0 (struct snd_pcm_runtime*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct snd_pcm_runtime*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct emu10k1x*,int /*<<< orphan*/ ,int) ; 
 struct emu10k1x* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC4(struct snd_pcm_substream *substream)
{
	struct emu10k1x *emu = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct emu10k1x_pcm *epcm = runtime->private_data;
	int channel = epcm->voice->number;
	snd_pcm_uframes_t ptr = 0, ptr1 = 0, ptr2= 0,ptr3 = 0,ptr4 = 0;

	if (!epcm->running)
		return 0;

	ptr3 = FUNC2(emu, PLAYBACK_LIST_PTR, channel);
	ptr1 = FUNC2(emu, PLAYBACK_POINTER, channel);
	ptr4 = FUNC2(emu, PLAYBACK_LIST_PTR, channel);

	if(ptr4 == 0 && ptr1 == FUNC1(runtime, runtime->buffer_size))
		return 0;
	
	if (ptr3 != ptr4) 
		ptr1 = FUNC2(emu, PLAYBACK_POINTER, channel);
	ptr2 = FUNC0(runtime, ptr1);
	ptr2 += (ptr4 >> 3) * runtime->period_size;
	ptr = ptr2;

	if (ptr >= runtime->buffer_size)
		ptr -= runtime->buffer_size;

	return ptr;
}
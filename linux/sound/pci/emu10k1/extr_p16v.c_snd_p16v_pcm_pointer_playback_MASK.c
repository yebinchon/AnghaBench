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
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int buffer_size; struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int /*<<< orphan*/  running; } ;
struct snd_emu10k1 {int p16v_device_offset; } ;
typedef  int snd_pcm_uframes_t ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLAYBACK_LIST_PTR ; 
 int /*<<< orphan*/  PLAYBACK_POINTER ; 
 int FUNC0 (struct snd_pcm_runtime*,int) ; 
 int FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ,int) ; 
 struct snd_emu10k1* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_emu10k1 *emu = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_emu10k1_pcm *epcm = runtime->private_data;
	snd_pcm_uframes_t ptr, ptr1, ptr2,ptr3,ptr4 = 0;
	int channel = substream->pcm->device - emu->p16v_device_offset;
	if (!epcm->running)
		return 0;

	ptr3 = FUNC1(emu, PLAYBACK_LIST_PTR, channel);
	ptr1 = FUNC1(emu, PLAYBACK_POINTER, channel);
	ptr4 = FUNC1(emu, PLAYBACK_LIST_PTR, channel);
	if (ptr3 != ptr4) ptr1 = FUNC1(emu, PLAYBACK_POINTER, channel);
	ptr2 = FUNC0(runtime, ptr1);
	ptr2+= (ptr4 >> 3) * runtime->period_size;
	ptr=ptr2;
        if (ptr >= runtime->buffer_size)
		ptr -= runtime->buffer_size;

	return ptr;
}
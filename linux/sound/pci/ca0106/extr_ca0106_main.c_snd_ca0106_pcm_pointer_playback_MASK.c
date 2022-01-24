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
struct snd_pcm_runtime {unsigned int period_size; unsigned int buffer_size; struct snd_ca0106_pcm* private_data; } ;
struct snd_ca0106_pcm {int channel_id; int /*<<< orphan*/  running; } ;
struct snd_ca0106 {TYPE_1__* card; } ;
typedef  unsigned int snd_pcm_uframes_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLAYBACK_LIST_PTR ; 
 int /*<<< orphan*/  PLAYBACK_POINTER ; 
 scalar_t__ FUNC0 (struct snd_pcm_runtime*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (struct snd_ca0106*,int /*<<< orphan*/ ,int) ; 
 struct snd_ca0106* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_ca0106 *emu = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ca0106_pcm *epcm = runtime->private_data;
	unsigned int ptr, prev_ptr;
	int channel = epcm->channel_id;
	int timeout = 10;

	if (!epcm->running)
		return 0;

	prev_ptr = -1;
	do {
		ptr = FUNC2(emu, PLAYBACK_LIST_PTR, channel);
		ptr = (ptr >> 3) * runtime->period_size;
		ptr += FUNC0(runtime,
			FUNC2(emu, PLAYBACK_POINTER, channel));
		if (ptr >= runtime->buffer_size)
			ptr -= runtime->buffer_size;
		if (prev_ptr == ptr)
			return ptr;
		prev_ptr = ptr;
	} while (--timeout);
	FUNC1(emu->card->dev, "ca0106: unstable DMA pointer!\n");
	return 0;
}
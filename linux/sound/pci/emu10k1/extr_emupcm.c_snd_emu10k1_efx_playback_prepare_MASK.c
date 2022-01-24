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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {unsigned int start_addr; int /*<<< orphan*/ * voices; int /*<<< orphan*/  extra; } ;
struct snd_emu10k1 {int /*<<< orphan*/ * efx_pcm_mixer; } ;

/* Variables and functions */
 unsigned int NUM_EFX_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int,int,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct snd_pcm_substream*) ; 
 struct snd_emu10k1* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_emu10k1 *emu = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_emu10k1_pcm *epcm = runtime->private_data;
	unsigned int start_addr, end_addr;
	unsigned int channel_size;
	int i;

	start_addr = epcm->start_addr;
	end_addr = epcm->start_addr + FUNC1(substream);

	/*
	 * the kX driver leaves some space between voices
	 */
	channel_size = ( end_addr - start_addr ) / NUM_EFX_PLAYBACK;

	FUNC0(emu, 1, 1, epcm->extra,
				   start_addr, start_addr + (channel_size / 2), NULL);

	/* only difference with the master voice is we use it for the pointer */
	FUNC0(emu, 1, 0, epcm->voices[0],
				   start_addr, start_addr + channel_size,
				   &emu->efx_pcm_mixer[0]);

	start_addr += channel_size;
	for (i = 1; i < NUM_EFX_PLAYBACK; i++) {
		FUNC0(emu, 0, 0, epcm->voices[i],
					   start_addr, start_addr + channel_size,
					   &emu->efx_pcm_mixer[i]);
		start_addr += channel_size;
	}

	return 0;
}
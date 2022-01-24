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
struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {unsigned int start_addr; scalar_t__* voices; scalar_t__ extra; } ;
struct snd_emu10k1 {int /*<<< orphan*/ * pcm_mixer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int,int,scalar_t__,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct snd_pcm_substream*) ; 
 unsigned int FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_emu10k1* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_emu10k1 *emu = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_emu10k1_pcm *epcm = runtime->private_data;
	unsigned int start_addr, end_addr;

	start_addr = epcm->start_addr;
	end_addr = FUNC2(substream);
	if (runtime->channels == 2) {
		start_addr >>= 1;
		end_addr >>= 1;
	}
	end_addr += start_addr;
	FUNC0(emu, 1, 1, epcm->extra,
				   start_addr, end_addr, NULL);
	start_addr = epcm->start_addr;
	end_addr = epcm->start_addr + FUNC1(substream);
	FUNC0(emu, 1, 0, epcm->voices[0],
				   start_addr, end_addr,
				   &emu->pcm_mixer[substream->number]);
	if (epcm->voices[1])
		FUNC0(emu, 0, 0, epcm->voices[1],
					   start_addr, end_addr,
					   &emu->pcm_mixer[substream->number]);
	return 0;
}
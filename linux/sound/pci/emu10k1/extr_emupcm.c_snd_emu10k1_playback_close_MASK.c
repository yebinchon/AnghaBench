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
struct snd_pcm_substream {size_t number; } ;
struct snd_emu10k1_pcm_mixer {int /*<<< orphan*/ * epcm; } ;
struct snd_emu10k1 {struct snd_emu10k1_pcm_mixer* pcm_mixer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,size_t,int /*<<< orphan*/ ) ; 
 struct snd_emu10k1* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_emu10k1 *emu = FUNC1(substream);
	struct snd_emu10k1_pcm_mixer *mix = &emu->pcm_mixer[substream->number];

	mix->epcm = NULL;
	FUNC0(emu, substream->number, 0);
	return 0;
}
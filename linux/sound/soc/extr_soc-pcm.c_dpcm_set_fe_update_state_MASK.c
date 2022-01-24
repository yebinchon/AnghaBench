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
struct snd_soc_pcm_runtime {TYPE_1__* dpcm; } ;
struct snd_pcm_substream {int dummy; } ;
typedef  enum snd_soc_dpcm_update { ____Placeholder_snd_soc_dpcm_update } snd_soc_dpcm_update ;
struct TYPE_2__ {int runtime_update; scalar_t__ trigger_pending; } ;

/* Variables and functions */
 int SND_SOC_DPCM_UPDATE_NO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_pcm_substream* FUNC3 (struct snd_soc_pcm_runtime*,int) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_pcm_runtime *fe,
				     int stream, enum snd_soc_dpcm_update state)
{
	struct snd_pcm_substream *substream =
		FUNC3(fe, stream);

	FUNC1(substream);
	if (state == SND_SOC_DPCM_UPDATE_NO && fe->dpcm[stream].trigger_pending) {
		FUNC0(substream,
				       fe->dpcm[stream].trigger_pending - 1);
		fe->dpcm[stream].trigger_pending = 0;
	}
	fe->dpcm[stream].runtime_update = state;
	FUNC2(substream);
}
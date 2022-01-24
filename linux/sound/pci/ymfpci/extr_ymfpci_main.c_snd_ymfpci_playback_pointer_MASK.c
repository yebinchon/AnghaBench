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
struct snd_ymfpci_voice {TYPE_1__* bank; } ;
struct snd_ymfpci_pcm {scalar_t__ running; struct snd_ymfpci_voice** voices; } ;
struct snd_ymfpci {size_t active_bank; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ymfpci_pcm* private_data; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_ymfpci* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_ymfpci *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ymfpci_pcm *ypcm = runtime->private_data;
	struct snd_ymfpci_voice *voice = ypcm->voices[0];

	if (!(ypcm->running && voice))
		return 0;
	return FUNC0(voice->bank[chip->active_bank].start);
}
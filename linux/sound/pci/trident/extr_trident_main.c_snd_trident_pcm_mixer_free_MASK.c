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
struct snd_trident_voice {int dummy; } ;
struct snd_trident_pcm_mixer {int /*<<< orphan*/ * voice; } ;
struct snd_trident {struct snd_trident_pcm_mixer* pcm_mixer; } ;
struct snd_pcm_substream {size_t number; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_trident*,struct snd_trident_pcm_mixer*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_trident *trident, struct snd_trident_voice *voice, struct snd_pcm_substream *substream)
{
	struct snd_trident_pcm_mixer *tmix;

	if (FUNC0(!trident || !substream))
		return -EINVAL;
	tmix = &trident->pcm_mixer[substream->number];
	tmix->voice = NULL;
	FUNC1(trident, tmix, substream->number, 0);
	return 0;
}
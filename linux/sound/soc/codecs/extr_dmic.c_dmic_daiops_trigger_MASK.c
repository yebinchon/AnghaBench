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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct dmic {int /*<<< orphan*/  modeswitch_delay; } ;

/* Variables and functions */
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dmic* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
			       int cmd, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct dmic *dmic = FUNC1(component);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_STOP:
		if (dmic->modeswitch_delay)
			FUNC0(dmic->modeswitch_delay);

		break;
	}

	return 0;
}
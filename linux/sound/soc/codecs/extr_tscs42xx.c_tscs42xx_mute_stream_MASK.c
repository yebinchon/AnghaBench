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

/* Variables and functions */
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai, int mute, int stream)
{
	struct snd_soc_component *component = dai->component;
	int ret;

	if (mute)
		if (stream == SNDRV_PCM_STREAM_PLAYBACK)
			ret = FUNC2(component);
		else
			ret = FUNC0(component);
	else
		if (stream == SNDRV_PCM_STREAM_PLAYBACK)
			ret = FUNC3(component);
		else
			ret = FUNC1(component);

	return ret;
}
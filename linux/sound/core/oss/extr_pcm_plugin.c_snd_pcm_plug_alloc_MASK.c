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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_plugin {struct snd_pcm_plugin* prev; scalar_t__ (* src_frames ) (struct snd_pcm_plugin*,scalar_t__) ;struct snd_pcm_plugin* next; scalar_t__ (* dst_frames ) (struct snd_pcm_plugin*,scalar_t__) ;} ;
typedef  scalar_t__ snd_pcm_uframes_t ;
typedef  scalar_t__ snd_pcm_sframes_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ FUNC0 (int) ; 
 struct snd_pcm_plugin* FUNC1 (struct snd_pcm_substream*) ; 
 struct snd_pcm_plugin* FUNC2 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC3 (struct snd_pcm_substream*) ; 
 int FUNC4 (struct snd_pcm_plugin*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct snd_pcm_plugin*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct snd_pcm_plugin*,scalar_t__) ; 

int FUNC7(struct snd_pcm_substream *plug, snd_pcm_uframes_t frames)
{
	int err;
	if (FUNC0(!FUNC1(plug)))
		return -ENXIO;
	if (FUNC3(plug) == SNDRV_PCM_STREAM_PLAYBACK) {
		struct snd_pcm_plugin *plugin = FUNC1(plug);
		while (plugin->next) {
			if (plugin->dst_frames)
				frames = plugin->dst_frames(plugin, frames);
			if (FUNC0((snd_pcm_sframes_t)frames <= 0))
				return -ENXIO;
			plugin = plugin->next;
			err = FUNC4(plugin, frames);
			if (err < 0)
				return err;
		}
	} else {
		struct snd_pcm_plugin *plugin = FUNC2(plug);
		while (plugin->prev) {
			if (plugin->src_frames)
				frames = plugin->src_frames(plugin, frames);
			if (FUNC0((snd_pcm_sframes_t)frames <= 0))
				return -ENXIO;
			plugin = plugin->prev;
			err = FUNC4(plugin, frames);
			if (err < 0)
				return err;
		}
	}
	return 0;
}
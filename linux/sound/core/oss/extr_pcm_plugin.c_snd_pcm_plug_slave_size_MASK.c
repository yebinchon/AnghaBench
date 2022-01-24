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
struct snd_pcm_plugin {scalar_t__ (* dst_frames ) (struct snd_pcm_plugin*,scalar_t__) ;scalar_t__ (* src_frames ) (struct snd_pcm_plugin*,scalar_t__) ;struct snd_pcm_plugin* prev; struct snd_pcm_plugin* next; } ;
typedef  scalar_t__ snd_pcm_uframes_t ;
typedef  scalar_t__ snd_pcm_sframes_t ;

/* Variables and functions */
 scalar_t__ ENXIO ; 
 int SNDRV_PCM_STREAM_CAPTURE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 struct snd_pcm_plugin* FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_pcm_plugin* FUNC3 (struct snd_pcm_substream*) ; 
 int FUNC4 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC5 (struct snd_pcm_plugin*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct snd_pcm_plugin*,scalar_t__) ; 

snd_pcm_sframes_t FUNC7(struct snd_pcm_substream *plug, snd_pcm_uframes_t clt_frames)
{
	struct snd_pcm_plugin *plugin, *plugin_prev, *plugin_next;
	snd_pcm_sframes_t frames;
	int stream;
	
	if (FUNC1(!plug))
		return -ENXIO;
	if (clt_frames == 0)
		return 0;
	frames = clt_frames;
	stream = FUNC4(plug);
	if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
		plugin = FUNC2(plug);
		while (plugin && frames > 0) {
			plugin_next = plugin->next;
			if (plugin->dst_frames) {
				frames = plugin->dst_frames(plugin, frames);
				if (frames < 0)
					return frames;
			}
			plugin = plugin_next;
		}
	} else if (stream == SNDRV_PCM_STREAM_CAPTURE) {
		plugin = FUNC3(plug);
		while (plugin) {
			plugin_prev = plugin->prev;
			if (plugin->src_frames) {
				frames = plugin->src_frames(plugin, frames);
				if (frames < 0)
					return frames;
			}
			plugin = plugin_prev;
		}
	} else
		FUNC0();
	return frames;
}
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
struct snd_usb_caiaqdev {int n_streams; int* period_out_count; int* period_in_count; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static void FUNC2(struct snd_usb_caiaqdev *cdev,
				      struct snd_pcm_substream **subs)
{
	int stream, pb, *cnt;
	struct snd_pcm_substream *sub;

	for (stream = 0; stream < cdev->n_streams; stream++) {
		sub = subs[stream];
		if (!sub)
			continue;

		pb = FUNC0(sub);
		cnt = (sub->stream == SNDRV_PCM_STREAM_PLAYBACK) ?
					&cdev->period_out_count[stream] :
					&cdev->period_in_count[stream];

		if (*cnt >= pb) {
			FUNC1(sub);
			*cnt %= pb;
		}
	}
}
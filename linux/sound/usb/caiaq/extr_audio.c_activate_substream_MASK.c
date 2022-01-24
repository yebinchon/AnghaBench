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
struct snd_usb_caiaqdev {int /*<<< orphan*/  spinlock; struct snd_pcm_substream** sub_capture; struct snd_pcm_substream** sub_playback; } ;
struct snd_pcm_substream {scalar_t__ stream; size_t number; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct snd_usb_caiaqdev *cdev,
	           struct snd_pcm_substream *sub)
{
	FUNC0(&cdev->spinlock);

	if (sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
		cdev->sub_playback[sub->number] = sub;
	else
		cdev->sub_capture[sub->number] = sub;

	FUNC1(&cdev->spinlock);
}
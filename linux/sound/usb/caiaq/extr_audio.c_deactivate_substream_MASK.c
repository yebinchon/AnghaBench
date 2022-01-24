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
struct snd_usb_caiaqdev {int /*<<< orphan*/  spinlock; int /*<<< orphan*/ ** sub_capture; int /*<<< orphan*/ ** sub_playback; } ;
struct snd_pcm_substream {scalar_t__ stream; size_t number; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC2(struct snd_usb_caiaqdev *cdev,
		     struct snd_pcm_substream *sub)
{
	unsigned long flags;
	FUNC0(&cdev->spinlock, flags);

	if (sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
		cdev->sub_playback[sub->number] = NULL;
	else
		cdev->sub_capture[sub->number] = NULL;

	FUNC1(&cdev->spinlock, flags);
}
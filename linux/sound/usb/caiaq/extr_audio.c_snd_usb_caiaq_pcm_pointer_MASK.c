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
struct snd_usb_caiaqdev {int /*<<< orphan*/  spinlock; int /*<<< orphan*/ * audio_in_buf_pos; int /*<<< orphan*/ * audio_out_buf_pos; scalar_t__ output_panic; scalar_t__ input_panic; } ;
struct snd_pcm_substream {int number; scalar_t__ stream; int /*<<< orphan*/  runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_POS_XRUN ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_usb_caiaqdev* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC4(struct snd_pcm_substream *sub)
{
	int index = sub->number;
	struct snd_usb_caiaqdev *cdev = FUNC1(sub);
	snd_pcm_uframes_t ptr;

	FUNC2(&cdev->spinlock);

	if (cdev->input_panic || cdev->output_panic) {
		ptr = SNDRV_PCM_POS_XRUN;
		goto unlock;
	}

	if (sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
		ptr = FUNC0(sub->runtime,
					cdev->audio_out_buf_pos[index]);
	else
		ptr = FUNC0(sub->runtime,
					cdev->audio_in_buf_pos[index]);

unlock:
	FUNC3(&cdev->spinlock);
	return ptr;
}
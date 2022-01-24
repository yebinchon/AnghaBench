#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ buffer_pos; scalar_t__ period_pos; } ;
struct ua101 {TYPE_2__ playback; int /*<<< orphan*/  states; int /*<<< orphan*/  alsa_playback_wait; int /*<<< orphan*/  mutex; } ;
struct snd_pcm_substream {TYPE_1__* runtime; struct ua101* private_data; } ;
struct TYPE_3__ {scalar_t__ delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCONNECTED ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  PLAYBACK_URB_COMPLETED ; 
 int /*<<< orphan*/  USB_PLAYBACK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ua101*) ; 
 int FUNC3 (struct ua101*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct ua101 *ua = substream->private_data;
	int err;

	FUNC0(&ua->mutex);
	err = FUNC2(ua);
	if (err >= 0)
		err = FUNC3(ua);
	FUNC1(&ua->mutex);
	if (err < 0)
		return err;

	/* see the comment in capture_pcm_prepare() */
	FUNC5(ua->alsa_playback_wait,
		   FUNC4(PLAYBACK_URB_COMPLETED, &ua->states) ||
		   !FUNC4(USB_PLAYBACK_RUNNING, &ua->states));
	if (FUNC4(DISCONNECTED, &ua->states))
		return -ENODEV;
	if (!FUNC4(USB_PLAYBACK_RUNNING, &ua->states))
		return -EIO;

	substream->runtime->delay = 0;
	ua->playback.period_pos = 0;
	ua->playback.buffer_pos = 0;
	return 0;
}
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
struct snd_rme9652 {scalar_t__ capture_pid; scalar_t__ playback_pid; int running; int control_register; scalar_t__ ss_channels; int /*<<< orphan*/  lock; int /*<<< orphan*/  channel_map; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int RME9652_DS ; 
 scalar_t__ RME9652_NCHANNELS ; 
 int /*<<< orphan*/  RME9652_control_register ; 
 int RME9652_freq ; 
 int /*<<< orphan*/  channel_map_9636_ds ; 
 int /*<<< orphan*/  channel_map_9636_ss ; 
 int /*<<< orphan*/  channel_map_9652_ds ; 
 int /*<<< orphan*/  channel_map_9652_ss ; 
 int FUNC0 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_rme9652*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_rme9652 *rme9652, int rate)
{
	int restart;
	int reject_if_open = 0;
	int xrate;

	if (!FUNC4 (rme9652)) {
		return -EBUSY;
	}

	/* Changing from a "single speed" to a "double speed" rate is
	   not allowed if any substreams are open. This is because
	   such a change causes a shift in the location of 
	   the DMA buffers and a reduction in the number of available
	   buffers. 

	   Note that a similar but essentially insoluble problem
	   exists for externally-driven rate changes. All we can do
	   is to flag rate changes in the read/write routines.
	 */

	FUNC5(&rme9652->lock);
	xrate = FUNC0(rme9652);

	switch (rate) {
	case 44100:
		if (xrate > 48000) {
			reject_if_open = 1;
		}
		rate = 0;
		break;
	case 48000:
		if (xrate > 48000) {
			reject_if_open = 1;
		}
		rate = RME9652_freq;
		break;
	case 88200:
		if (xrate < 48000) {
			reject_if_open = 1;
		}
		rate = RME9652_DS;
		break;
	case 96000:
		if (xrate < 48000) {
			reject_if_open = 1;
		}
		rate = RME9652_DS | RME9652_freq;
		break;
	default:
		FUNC6(&rme9652->lock);
		return -EINVAL;
	}

	if (reject_if_open && (rme9652->capture_pid >= 0 || rme9652->playback_pid >= 0)) {
		FUNC6(&rme9652->lock);
		return -EBUSY;
	}

	if ((restart = rme9652->running)) {
		FUNC2(rme9652);
	}
	rme9652->control_register &= ~(RME9652_freq | RME9652_DS);
	rme9652->control_register |= rate;
	FUNC3(rme9652, RME9652_control_register, rme9652->control_register);

	if (restart) {
		FUNC1(rme9652);
	}

	if (rate & RME9652_DS) {
		if (rme9652->ss_channels == RME9652_NCHANNELS) {
			rme9652->channel_map = channel_map_9652_ds;
		} else {
			rme9652->channel_map = channel_map_9636_ds;
		}
	} else {
		if (rme9652->ss_channels == RME9652_NCHANNELS) {
			rme9652->channel_map = channel_map_9652_ss;
		} else {
			rme9652->channel_map = channel_map_9636_ss;
		}
	}

	FUNC6(&rme9652->lock);
	return 0;
}
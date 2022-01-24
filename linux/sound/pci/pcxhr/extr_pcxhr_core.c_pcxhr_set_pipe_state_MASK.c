#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcxhr_mgr {TYPE_1__* pci; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int MAX_WAIT_FOR_DSP ; 
 int PCXHR_PIPE_STATE_CAPTURE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct pcxhr_mgr*) ; 
 int FUNC7 (struct pcxhr_mgr*,int,int*) ; 
 int FUNC8 (struct pcxhr_mgr*,int) ; 
 int FUNC9 (struct pcxhr_mgr*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(struct pcxhr_mgr *mgr, int playback_mask,
			 int capture_mask, int start)
{
	int state, i, err;
	int audio_mask;

#ifdef CONFIG_SND_DEBUG_VERBOSE
	ktime_t start_time, stop_time, diff_time;

	start_time = ktime_get();
#endif
	audio_mask = (playback_mask |
		      (capture_mask << PCXHR_PIPE_STATE_CAPTURE_OFFSET));
	/* current pipe state (playback + record) */
	state = FUNC6(mgr);
	FUNC0(&mgr->pci->dev,
		"pcxhr_set_pipe_state %s (mask %x current %x)\n",
		    start ? "START" : "STOP", audio_mask, state);
	if (start) {
		/* start only pipes that are not yet started */
		audio_mask &= ~state;
		state = audio_mask;
		for (i = 0; i < MAX_WAIT_FOR_DSP; i++) {
			err = FUNC7(mgr, state, &state);
			if (err)
				return err;
			if (state == 0)
				break;	/* success, all pipes prepaired */
			FUNC5(1);	/* wait 1 millisecond and retry */
		}
	} else {
		audio_mask &= state;	/* stop only pipes that are started */
	}
	if (audio_mask == 0)
		return 0;

	err = FUNC9(mgr, audio_mask);
	if (err)
		return err;

	i = 0;
	while (1) {
		state = FUNC6(mgr);
		/* have all pipes the new state ? */
		if ((state & audio_mask) == (start ? audio_mask : 0))
			break;
		if (++i >= MAX_WAIT_FOR_DSP * 100) {
			FUNC1(&mgr->pci->dev, "error pipe start/stop\n");
			return -EBUSY;
		}
		FUNC10(10);			/* wait 10 microseconds */
	}
	if (!start) {
		err = FUNC8(mgr, audio_mask);
		if (err)
			return err;
	}
#ifdef CONFIG_SND_DEBUG_VERBOSE
	stop_time = ktime_get();
	diff_time = ktime_sub(stop_time, start_time);
	dev_dbg(&mgr->pci->dev, "***SET PIPE STATE*** TIME = %ld (err = %x)\n",
			(long)(ktime_to_ns(diff_time)), err);
#endif
	return 0;
}
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
struct snd_rme9652 {int control_register; int creg_spdif_stream; scalar_t__ playback_pid; scalar_t__ capture_pid; int period_bytes; int /*<<< orphan*/  lock; } ;
struct snd_pcm_substream {TYPE_1__* pstr; } ;
struct snd_pcm_hw_params {int dummy; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {scalar_t__ stream; } ;

/* Variables and functions */
 int EBUSY ; 
 int RME9652_Dolby ; 
 int RME9652_EMP ; 
 int RME9652_PRO ; 
 int /*<<< orphan*/  RME9652_control_register ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_rme9652*) ; 
 int FUNC4 (struct snd_rme9652*,int) ; 
 int FUNC5 (struct snd_rme9652*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_rme9652*,int /*<<< orphan*/ ,int) ; 
 struct snd_rme9652* FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params)
{
	struct snd_rme9652 *rme9652 = FUNC7(substream);
	int err;
	pid_t this_pid;
	pid_t other_pid;

	FUNC8(&rme9652->lock);

	if (substream->pstr->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		rme9652->control_register &= ~(RME9652_PRO | RME9652_Dolby | RME9652_EMP);
		FUNC6(rme9652, RME9652_control_register, rme9652->control_register |= rme9652->creg_spdif_stream);
		this_pid = rme9652->playback_pid;
		other_pid = rme9652->capture_pid;
	} else {
		this_pid = rme9652->capture_pid;
		other_pid = rme9652->playback_pid;
	}

	if ((other_pid > 0) && (this_pid != other_pid)) {

		/* The other stream is open, and not by the same
		   task as this one. Make sure that the parameters
		   that matter are the same.
		 */

		if ((int)FUNC2(params) !=
		    FUNC3(rme9652)) {
			FUNC9(&rme9652->lock);
			FUNC0(params, SNDRV_PCM_HW_PARAM_RATE);
			return -EBUSY;
		}

		if (FUNC1(params) != rme9652->period_bytes / 4) {
			FUNC9(&rme9652->lock);
			FUNC0(params, SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
			return -EBUSY;
		}

		/* We're fine. */

		FUNC9(&rme9652->lock);
 		return 0;

	} else {
		FUNC9(&rme9652->lock);
	}

	/* how to make sure that the rate matches an externally-set one ?
	 */

	if ((err = FUNC5(rme9652, FUNC2(params))) < 0) {
		FUNC0(params, SNDRV_PCM_HW_PARAM_RATE);
		return err;
	}

	if ((err = FUNC4(rme9652, FUNC1(params))) < 0) {
		FUNC0(params, SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
		return err;
	}

	return 0;
}
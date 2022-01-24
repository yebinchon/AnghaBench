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
struct snd_pcm_substream {TYPE_1__* pstr; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct hdsp {int control_register; int creg_spdif_stream; scalar_t__ playback_pid; scalar_t__ capture_pid; scalar_t__ system_sample_rate; int period_bytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  clock_source_locked; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {scalar_t__ stream; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int HDSP_SPDIFEmphasis ; 
 int HDSP_SPDIFNonAudio ; 
 int HDSP_SPDIFProfessional ; 
 int /*<<< orphan*/  HDSP_controlRegister ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hdsp*,int) ; 
 scalar_t__ FUNC2 (struct hdsp*) ; 
 int FUNC3 (struct hdsp*,int) ; 
 int FUNC4 (struct hdsp*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hdsp*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC7 (struct snd_pcm_hw_params*) ; 
 struct hdsp* FUNC8 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params)
{
	struct hdsp *hdsp = FUNC8(substream);
	int err;
	pid_t this_pid;
	pid_t other_pid;

	if (FUNC2 (hdsp))
		return -EIO;

	if (FUNC1(hdsp, 1))
		return -EIO;

	FUNC9(&hdsp->lock);

	if (substream->pstr->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		hdsp->control_register &= ~(HDSP_SPDIFProfessional | HDSP_SPDIFNonAudio | HDSP_SPDIFEmphasis);
		FUNC5(hdsp, HDSP_controlRegister, hdsp->control_register |= hdsp->creg_spdif_stream);
		this_pid = hdsp->playback_pid;
		other_pid = hdsp->capture_pid;
	} else {
		this_pid = hdsp->capture_pid;
		other_pid = hdsp->playback_pid;
	}

	if ((other_pid > 0) && (this_pid != other_pid)) {

		/* The other stream is open, and not by the same
		   task as this one. Make sure that the parameters
		   that matter are the same.
		 */

		if (FUNC7(params) != hdsp->system_sample_rate) {
			FUNC10(&hdsp->lock);
			FUNC0(params, SNDRV_PCM_HW_PARAM_RATE);
			return -EBUSY;
		}

		if (FUNC6(params) != hdsp->period_bytes / 4) {
			FUNC10(&hdsp->lock);
			FUNC0(params, SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
			return -EBUSY;
		}

		/* We're fine. */

		FUNC10(&hdsp->lock);
 		return 0;

	} else {
		FUNC10(&hdsp->lock);
	}

	/* how to make sure that the rate matches an externally-set one ?
	 */

	FUNC9(&hdsp->lock);
	if (! hdsp->clock_source_locked) {
		if ((err = FUNC4(hdsp, FUNC7(params), 0)) < 0) {
			FUNC10(&hdsp->lock);
			FUNC0(params, SNDRV_PCM_HW_PARAM_RATE);
			return err;
		}
	}
	FUNC10(&hdsp->lock);

	if ((err = FUNC3(hdsp, FUNC6(params))) < 0) {
		FUNC0(params, SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
		return err;
	}

	return 0;
}
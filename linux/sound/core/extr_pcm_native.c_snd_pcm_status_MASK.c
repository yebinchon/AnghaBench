#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_status {scalar_t__ overrange; scalar_t__ avail_max; int /*<<< orphan*/  delay; int /*<<< orphan*/  avail; int /*<<< orphan*/  hw_ptr; int /*<<< orphan*/  appl_ptr; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  audio_tstamp_accuracy; int /*<<< orphan*/  audio_tstamp_data; int /*<<< orphan*/  audio_tstamp; int /*<<< orphan*/  driver_tstamp; int /*<<< orphan*/  trigger_tstamp; int /*<<< orphan*/  state; int /*<<< orphan*/  suspended_state; } ;
struct TYPE_10__ {int valid; } ;
struct TYPE_9__ {scalar_t__ type_requested; } ;
struct TYPE_6__ {int info; } ;
struct snd_pcm_runtime {scalar_t__ tstamp_mode; scalar_t__ overrange; scalar_t__ avail_max; TYPE_3__* status; TYPE_2__* control; TYPE_5__ audio_tstamp_report; int /*<<< orphan*/  driver_tstamp; int /*<<< orphan*/  trigger_tstamp; TYPE_4__ audio_tstamp_config; TYPE_1__ hw; } ;
struct TYPE_8__ {int /*<<< orphan*/  hw_ptr; int /*<<< orphan*/  audio_tstamp; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  suspended_state; int /*<<< orphan*/  state; } ;
struct TYPE_7__ {int /*<<< orphan*/  appl_ptr; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_COMPAT ; 
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT ; 
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK ; 
 int SNDRV_PCM_INFO_HAS_WALL_CLOCK ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_OPEN ; 
 scalar_t__ SNDRV_PCM_TSTAMP_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_substream*) ; 

int FUNC9(struct snd_pcm_substream *substream,
		   struct snd_pcm_status *status)
{
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC5(substream);

	FUNC7(status->audio_tstamp_data,
					&runtime->audio_tstamp_config);

	/* backwards compatible behavior */
	if (runtime->audio_tstamp_config.type_requested ==
		SNDRV_PCM_AUDIO_TSTAMP_TYPE_COMPAT) {
		if (runtime->hw.info & SNDRV_PCM_INFO_HAS_WALL_CLOCK)
			runtime->audio_tstamp_config.type_requested =
				SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK;
		else
			runtime->audio_tstamp_config.type_requested =
				SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT;
		runtime->audio_tstamp_report.valid = 0;
	} else
		runtime->audio_tstamp_report.valid = 1;

	status->state = runtime->status->state;
	status->suspended_state = runtime->status->suspended_state;
	if (status->state == SNDRV_PCM_STATE_OPEN)
		goto _end;
	status->trigger_tstamp = runtime->trigger_tstamp;
	if (FUNC4(substream)) {
		FUNC8(substream);
		if (runtime->tstamp_mode == SNDRV_PCM_TSTAMP_ENABLE) {
			status->tstamp = runtime->status->tstamp;
			status->driver_tstamp = runtime->driver_tstamp;
			status->audio_tstamp =
				runtime->status->audio_tstamp;
			if (runtime->audio_tstamp_report.valid == 1)
				/* backwards compatibility, no report provided in COMPAT mode */
				FUNC3(&status->audio_tstamp_data,
								&status->audio_tstamp_accuracy,
								&runtime->audio_tstamp_report);

			goto _tstamp_end;
		}
	} else {
		/* get tstamp only in fallback mode and only if enabled */
		if (runtime->tstamp_mode == SNDRV_PCM_TSTAMP_ENABLE)
			FUNC2(runtime, &status->tstamp);
	}
 _tstamp_end:
	status->appl_ptr = runtime->control->appl_ptr;
	status->hw_ptr = runtime->status->hw_ptr;
	status->avail = FUNC0(substream);
	status->delay = FUNC4(substream) ?
		FUNC1(substream) : 0;
	status->avail_max = runtime->avail_max;
	status->overrange = runtime->overrange;
	runtime->avail_max = 0;
	runtime->overrange = 0;
 _end:
 	FUNC6(substream);
	return 0;
}
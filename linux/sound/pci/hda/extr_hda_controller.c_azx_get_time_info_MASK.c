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
typedef  int /*<<< orphan*/  u64 ;
struct timespec {int dummy; } ;
struct system_device_crosststamp {int /*<<< orphan*/  device; int /*<<< orphan*/  sys_realtime; int /*<<< orphan*/  sys_monoraw; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int info; } ;
struct snd_pcm_runtime {int tstamp_type; TYPE_1__ hw; } ;
struct snd_pcm_audio_tstamp_report {int accuracy_report; int accuracy; scalar_t__ actual_type; } ;
struct snd_pcm_audio_tstamp_config {scalar_t__ type_requested; scalar_t__ report_delay; } ;
struct TYPE_4__ {int /*<<< orphan*/  tc; } ;
struct azx_dev {TYPE_2__ core; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT ; 
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK ; 
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK_SYNCHRONIZED ; 
 int SNDRV_PCM_INFO_HAS_LINK_ATIME ; 
#define  SNDRV_PCM_TSTAMP_TYPE_MONOTONIC 129 
#define  SNDRV_PCM_TSTAMP_TYPE_MONOTONIC_RAW 128 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_substream*,struct system_device_crosststamp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct azx_dev* FUNC3 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC4 (struct snd_pcm_runtime*,struct snd_pcm_audio_tstamp_config*) ; 
 struct timespec FUNC5 (int /*<<< orphan*/ ) ; 
 struct timespec FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_runtime*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
			struct timespec *system_ts, struct timespec *audio_ts,
			struct snd_pcm_audio_tstamp_config *audio_tstamp_config,
			struct snd_pcm_audio_tstamp_report *audio_tstamp_report)
{
	struct azx_dev *azx_dev = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct system_device_crosststamp xtstamp;
	int ret;
	u64 nsec;

	if ((substream->runtime->hw.info & SNDRV_PCM_INFO_HAS_LINK_ATIME) &&
		(audio_tstamp_config->type_requested == SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK)) {

		FUNC7(substream->runtime, system_ts);

		nsec = FUNC8(&azx_dev->core.tc);
		nsec = FUNC2(nsec, 3); /* can be optimized */
		if (audio_tstamp_config->report_delay)
			nsec = FUNC0(substream, nsec);

		*audio_ts = FUNC6(nsec);

		audio_tstamp_report->actual_type = SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK;
		audio_tstamp_report->accuracy_report = 1; /* rest of structure is valid */
		audio_tstamp_report->accuracy = 42; /* 24 MHz WallClock == 42ns resolution */

	} else if (FUNC4(runtime, audio_tstamp_config)) {

		ret = FUNC1(substream, &xtstamp);
		if (ret)
			return ret;

		switch (runtime->tstamp_type) {
		case SNDRV_PCM_TSTAMP_TYPE_MONOTONIC:
			return -EINVAL;

		case SNDRV_PCM_TSTAMP_TYPE_MONOTONIC_RAW:
			*system_ts = FUNC5(xtstamp.sys_monoraw);
			break;

		default:
			*system_ts = FUNC5(xtstamp.sys_realtime);
			break;

		}

		*audio_ts = FUNC5(xtstamp.device);

		audio_tstamp_report->actual_type =
			SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK_SYNCHRONIZED;
		audio_tstamp_report->accuracy_report = 1;
		/* 24 MHz WallClock == 42ns resolution */
		audio_tstamp_report->accuracy = 42;

	} else {
		audio_tstamp_report->actual_type = SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT;
	}

	return 0;
}
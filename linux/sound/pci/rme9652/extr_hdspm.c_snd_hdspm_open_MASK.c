#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int /*<<< orphan*/  rates; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct hdspm {int io_type; int /*<<< orphan*/  lock; struct snd_pcm_substream* capture_substream; int /*<<< orphan*/  capture_pid; struct snd_pcm_substream* playback_substream; int /*<<< orphan*/  playback_pid; } ;
struct TYPE_5__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int AES32 ; 
#define  AIO 129 
#define  RayDAT 128 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_KNOT ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  hdspm_hw_constraints_aes32_sample_rates ; 
 int /*<<< orphan*/  FUNC0 (struct hdspm*) ; 
 TYPE_1__ snd_hdspm_capture_subinfo ; 
 int /*<<< orphan*/  snd_hdspm_hw_rule_in_channels ; 
 int /*<<< orphan*/  snd_hdspm_hw_rule_in_channels_rate ; 
 int /*<<< orphan*/  snd_hdspm_hw_rule_out_channels ; 
 int /*<<< orphan*/  snd_hdspm_hw_rule_out_channels_rate ; 
 int /*<<< orphan*/  snd_hdspm_hw_rule_rate_in_channels ; 
 int /*<<< orphan*/  snd_hdspm_hw_rule_rate_out_channels ; 
 TYPE_1__ snd_hdspm_playback_subinfo ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hdspm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*) ; 
 struct hdspm* FUNC8 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream)
{
	struct hdspm *hdspm = FUNC8(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	bool playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);

	FUNC9(&hdspm->lock);
	FUNC7(substream);
	runtime->hw = (playback) ? snd_hdspm_playback_subinfo :
		snd_hdspm_capture_subinfo;

	if (playback) {
		if (!hdspm->capture_substream)
			FUNC0(hdspm);

		hdspm->playback_pid = current->pid;
		hdspm->playback_substream = substream;
	} else {
		if (!hdspm->playback_substream)
			FUNC0(hdspm);

		hdspm->capture_pid = current->pid;
		hdspm->capture_substream = substream;
	}

	FUNC10(&hdspm->lock);

	FUNC3(runtime, 0, 32, 24);
	FUNC4(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE);

	switch (hdspm->io_type) {
	case AIO:
	case RayDAT:
		FUNC2(runtime,
					     SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
					     32, 4096);
		/* RayDAT & AIO have a fixed buffer of 16384 samples per channel */
		FUNC5(runtime,
					     SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
					     16384);
		break;

	default:
		FUNC2(runtime,
					     SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
					     64, 8192);
		FUNC5(runtime,
					     SNDRV_PCM_HW_PARAM_PERIODS, 2);
		break;
	}

	if (AES32 == hdspm->io_type) {
		runtime->hw.rates |= SNDRV_PCM_RATE_KNOT;
		FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				&hdspm_hw_constraints_aes32_sample_rates);
	} else {
		FUNC6(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				(playback ?
				 snd_hdspm_hw_rule_rate_out_channels :
				 snd_hdspm_hw_rule_rate_in_channels), hdspm,
				SNDRV_PCM_HW_PARAM_CHANNELS, -1);
	}

	FUNC6(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
			(playback ? snd_hdspm_hw_rule_out_channels :
			 snd_hdspm_hw_rule_in_channels), hdspm,
			SNDRV_PCM_HW_PARAM_CHANNELS, -1);

	FUNC6(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
			(playback ? snd_hdspm_hw_rule_out_channels_rate :
			 snd_hdspm_hw_rule_in_channels_rate), hdspm,
			SNDRV_PCM_HW_PARAM_RATE, -1);

	return 0;
}
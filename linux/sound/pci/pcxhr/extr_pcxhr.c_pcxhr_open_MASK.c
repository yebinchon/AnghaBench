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
struct snd_pcxhr {int /*<<< orphan*/  chip_idx; TYPE_1__* card; struct pcxhr_stream* capture_stream; struct pcxhr_stream* playback_stream; struct pcxhr_mgr* mgr; } ;
struct snd_pcm_substream {scalar_t__ stream; size_t number; struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int channels_max; int channels_min; int rate_min; int rate_max; int /*<<< orphan*/  formats; } ;
struct snd_pcm_runtime {struct pcxhr_stream* private_data; TYPE_2__ hw; } ;
struct pcxhr_stream {scalar_t__ status; scalar_t__ channels; struct snd_pcm_substream* substream; } ;
struct pcxhr_mgr {int sample_rate; scalar_t__ use_clock_type; int /*<<< orphan*/  setup_mutex; int /*<<< orphan*/  ref_count_rate; scalar_t__ is_hr_stereo; scalar_t__ mono_capture; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ PCXHR_CLOCK_TYPE_INTERNAL ; 
 scalar_t__ PCXHR_STREAM_STATUS_FREE ; 
 scalar_t__ PCXHR_STREAM_STATUS_OPEN ; 
 int /*<<< orphan*/  SNDRV_PCM_FMTBIT_FLOAT_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ pcxhr_caps ; 
 scalar_t__ FUNC4 (struct pcxhr_mgr*,scalar_t__,int*) ; 
 int FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*) ; 
 struct snd_pcxhr* FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *subs)
{
	struct snd_pcxhr       *chip = FUNC8(subs);
	struct pcxhr_mgr       *mgr = chip->mgr;
	struct snd_pcm_runtime *runtime = subs->runtime;
	struct pcxhr_stream    *stream;
	int err;

	FUNC2(&mgr->setup_mutex);

	/* copy the struct snd_pcm_hardware struct */
	runtime->hw = pcxhr_caps;

	if( subs->stream == SNDRV_PCM_STREAM_PLAYBACK ) {
		FUNC0(chip->card->dev, "pcxhr_open playback chip%d subs%d\n",
			    chip->chip_idx, subs->number);
		stream = &chip->playback_stream[subs->number];
	} else {
		FUNC0(chip->card->dev, "pcxhr_open capture chip%d subs%d\n",
			    chip->chip_idx, subs->number);
		if (mgr->mono_capture)
			runtime->hw.channels_max = 1;
		else
			runtime->hw.channels_min = 2;
		stream = &chip->capture_stream[subs->number];
	}
	if (stream->status != PCXHR_STREAM_STATUS_FREE){
		/* streams in use */
		FUNC1(chip->card->dev, "pcxhr_open chip%d subs%d in use\n",
			   chip->chip_idx, subs->number);
		FUNC3(&mgr->setup_mutex);
		return -EBUSY;
	}

	/* float format support is in some cases buggy on stereo cards */
	if (mgr->is_hr_stereo)
		runtime->hw.formats &= ~SNDRV_PCM_FMTBIT_FLOAT_LE;

	/* buffer-size should better be multiple of period-size */
	err = FUNC5(runtime,
					    SNDRV_PCM_HW_PARAM_PERIODS);
	if (err < 0) {
		FUNC3(&mgr->setup_mutex);
		return err;
	}

	/* if a sample rate is already used or fixed by external clock,
	 * the stream cannot change
	 */
	if (mgr->sample_rate)
		runtime->hw.rate_min = runtime->hw.rate_max = mgr->sample_rate;
	else {
		if (mgr->use_clock_type != PCXHR_CLOCK_TYPE_INTERNAL) {
			int external_rate;
			if (FUNC4(mgr, mgr->use_clock_type,
						     &external_rate) ||
			    external_rate == 0) {
				/* cannot detect the external clock rate */
				FUNC3(&mgr->setup_mutex);
				return -EBUSY;
			}
			runtime->hw.rate_min = external_rate;
			runtime->hw.rate_max = external_rate;
		}
	}

	stream->status      = PCXHR_STREAM_STATUS_OPEN;
	stream->substream   = subs;
	stream->channels    = 0; /* not configured yet */

	runtime->private_data = stream;

	/* better get a divisor of granularity values (96 or 192) */
	FUNC6(runtime, 0,
				   SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 32);
	FUNC6(runtime, 0,
				   SNDRV_PCM_HW_PARAM_PERIOD_SIZE, 32);
	FUNC7(subs);

	mgr->ref_count_rate++;

	FUNC3(&mgr->setup_mutex);
	return 0;
}
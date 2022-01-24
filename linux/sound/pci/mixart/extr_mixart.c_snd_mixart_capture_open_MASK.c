#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int /*<<< orphan*/  number; struct snd_pcm* pcm; struct snd_pcm_runtime* runtime; } ;
struct TYPE_5__ {int channels_min; scalar_t__ rate_max; scalar_t__ rate_min; } ;
struct snd_pcm_runtime {TYPE_2__ hw; struct mixart_stream* private_data; } ;
struct snd_pcm {int dummy; } ;
struct snd_mixart {struct mixart_mgr* mgr; TYPE_1__* card; int /*<<< orphan*/  chip_idx; struct mixart_stream* capture_stream; struct snd_pcm* pcm_dig; struct snd_pcm* pcm; } ;
struct mixart_stream {scalar_t__ status; int pcm_number; scalar_t__ channels; struct snd_pcm_substream* substream; struct mixart_pipe* pipe; } ;
struct mixart_pipe {int dummy; } ;
struct mixart_mgr {int /*<<< orphan*/  setup_mutex; scalar_t__ sample_rate; int /*<<< orphan*/  ref_count_rate; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int MIXART_PCM_ANALOG ; 
 int MIXART_PCM_DIGITAL ; 
 scalar_t__ MIXART_STREAM_STATUS_FREE ; 
 scalar_t__ MIXART_STREAM_STATUS_OPEN ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct mixart_mgr*,struct mixart_pipe*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct mixart_pipe* FUNC6 (struct snd_mixart*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ snd_mixart_analog_caps ; 
 TYPE_2__ snd_mixart_digital_caps ; 
 int /*<<< orphan*/  FUNC7 (struct mixart_mgr*,struct mixart_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_mixart* FUNC9 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *subs)
{
	struct snd_mixart            *chip = FUNC9(subs);
	struct mixart_mgr        *mgr = chip->mgr;
	struct snd_pcm_runtime *runtime = subs->runtime;
	struct snd_pcm *pcm = subs->pcm;
	struct mixart_stream     *stream;
	struct mixart_pipe       *pipe;
	int err = 0;
	int pcm_number;

	FUNC3(&mgr->setup_mutex);

	if ( pcm == chip->pcm ) {
		pcm_number = MIXART_PCM_ANALOG;
		runtime->hw = snd_mixart_analog_caps;
	} else {
		FUNC5(pcm != chip->pcm_dig);
		pcm_number = MIXART_PCM_DIGITAL;
		runtime->hw = snd_mixart_digital_caps;
	}

	runtime->hw.channels_min = 2; /* for instance, no mono */

	FUNC0(chip->card->dev, "snd_mixart_capture_open C%d/P%d/Sub%d\n",
		chip->chip_idx, pcm_number, subs->number);

	/* get stream info */
	stream = &(chip->capture_stream[pcm_number]);

	if (stream->status != MIXART_STREAM_STATUS_FREE){
		/* streams in use */
		FUNC1(chip->card->dev,
			"snd_mixart_capture_open C%d/P%d/Sub%d in use\n",
			chip->chip_idx, pcm_number, subs->number);
		err = -EBUSY;
		goto _exit_open;
	}

	/* get pipe pointer (in pipe) */
	pipe = FUNC6(chip, pcm_number, 1, 0);

	if (pipe == NULL) {
		err = -EINVAL;
		goto _exit_open;
	}

	/* start the pipe if necessary */
	err = FUNC2(chip->mgr, pipe, 1);
	if( err < 0 ) {
		FUNC1(chip->card->dev, "error starting pipe!\n");
		FUNC7(chip->mgr, pipe, 0);
		err = -EINVAL;
		goto _exit_open;
	}

	stream->pipe        = pipe;
	stream->pcm_number  = pcm_number;
	stream->status      = MIXART_STREAM_STATUS_OPEN;
	stream->substream   = subs;
	stream->channels    = 0; /* not configured yet */

	runtime->private_data = stream;

	FUNC8(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 32);
	FUNC8(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 64);

	/* if a sample rate is already used, another stream cannot change */
	if(mgr->ref_count_rate++) {
		if(mgr->sample_rate) {
			runtime->hw.rate_min = runtime->hw.rate_max = mgr->sample_rate;
		}
	}

 _exit_open:
	FUNC4(&mgr->setup_mutex);

	return err;
}
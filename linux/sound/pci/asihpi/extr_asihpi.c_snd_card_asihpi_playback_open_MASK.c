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
struct snd_pcm_substream {int /*<<< orphan*/  number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_hardware {size_t buffer_bytes_max; size_t period_bytes_min; size_t period_bytes_max; size_t periods_min; size_t periods_max; size_t channels_max; int info; int /*<<< orphan*/  formats; int /*<<< orphan*/  channels_min; } ;
struct snd_pcm_runtime {struct snd_pcm_hardware hw; int /*<<< orphan*/  private_free; struct snd_card_asihpi_pcm* private_data; } ;
struct snd_card_asihpi_pcm {int /*<<< orphan*/  h_stream; struct snd_pcm_substream* substream; int /*<<< orphan*/  timer; } ;
struct snd_card_asihpi {size_t update_interval_frames; size_t out_max_chans; scalar_t__ can_dma; scalar_t__ support_grouping; int /*<<< orphan*/  out_min_chans; TYPE_2__* hpi; } ;
typedef  int /*<<< orphan*/  snd_card_asihpi_playback ;
struct TYPE_4__ {int /*<<< orphan*/  interrupt_mode; TYPE_1__* adapter; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 size_t BUFFER_BYTES_MAX ; 
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HPI_ERROR_OBJ_ALREADY_OPEN ; 
 size_t PERIODS_MIN ; 
 size_t PERIOD_BYTES_MIN ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int SNDRV_PCM_INFO_BATCH ; 
 int SNDRV_PCM_INFO_BLOCK_TRANSFER ; 
 int SNDRV_PCM_INFO_DOUBLE ; 
 int SNDRV_PCM_INFO_INTERLEAVED ; 
 int SNDRV_PCM_INFO_MMAP ; 
 int SNDRV_PCM_INFO_MMAP_VALID ; 
 int SNDRV_PCM_INFO_PAUSE ; 
 int SNDRV_PCM_INFO_SYNC_START ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_card_asihpi_pcm*) ; 
 struct snd_card_asihpi_pcm* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hardware*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_card_asihpi*,struct snd_pcm_hardware*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_card_asihpi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_card_asihpi_runtime_free ; 
 int /*<<< orphan*/  snd_card_asihpi_timer_function ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_pcm_substream*) ; 
 struct snd_card_asihpi* FUNC11 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_card_asihpi_pcm *dpcm;
	struct snd_card_asihpi *card = FUNC11(substream);
	struct snd_pcm_hardware snd_card_asihpi_playback;
	int err;

	dpcm = FUNC3(sizeof(*dpcm), GFP_KERNEL);
	if (dpcm == NULL)
		return -ENOMEM;

	err = FUNC1(card->hpi->adapter->index,
			      substream->number, &dpcm->h_stream);
	FUNC0(err);
	if (err)
		FUNC2(dpcm);
	if (err == HPI_ERROR_OBJ_ALREADY_OPEN)
		return -EBUSY;
	if (err)
		return -EIO;

	/*? also check ASI5000 samplerate source
	    If external, only support external rate.
	    If internal and other stream playing, can't switch
	*/

	FUNC13(&dpcm->timer, snd_card_asihpi_timer_function, 0);
	dpcm->substream = substream;
	runtime->private_data = dpcm;
	runtime->private_free = snd_card_asihpi_runtime_free;

	FUNC4(&snd_card_asihpi_playback, 0, sizeof(snd_card_asihpi_playback));
	if (!card->hpi->interrupt_mode) {
		snd_card_asihpi_playback.buffer_bytes_max = BUFFER_BYTES_MAX;
		snd_card_asihpi_playback.period_bytes_min = PERIOD_BYTES_MIN;
		snd_card_asihpi_playback.period_bytes_max = BUFFER_BYTES_MAX / PERIODS_MIN;
		snd_card_asihpi_playback.periods_min = PERIODS_MIN;
		snd_card_asihpi_playback.periods_max = BUFFER_BYTES_MAX / PERIOD_BYTES_MIN;
	} else {
		size_t pbmin = card->update_interval_frames *
			card->out_max_chans;
		snd_card_asihpi_playback.buffer_bytes_max = BUFFER_BYTES_MAX;
		snd_card_asihpi_playback.period_bytes_min = pbmin;
		snd_card_asihpi_playback.period_bytes_max = BUFFER_BYTES_MAX / PERIODS_MIN;
		snd_card_asihpi_playback.periods_min = PERIODS_MIN;
		snd_card_asihpi_playback.periods_max = BUFFER_BYTES_MAX / pbmin;
	}

	/* snd_card_asihpi_playback.fifo_size = 0; */
	snd_card_asihpi_playback.channels_max = card->out_max_chans;
	snd_card_asihpi_playback.channels_min = card->out_min_chans;
	snd_card_asihpi_playback.formats =
			FUNC6(card, dpcm->h_stream);

	FUNC5(card,  &snd_card_asihpi_playback);

	snd_card_asihpi_playback.info = SNDRV_PCM_INFO_INTERLEAVED |
					SNDRV_PCM_INFO_DOUBLE |
					SNDRV_PCM_INFO_BATCH |
					SNDRV_PCM_INFO_BLOCK_TRANSFER |
					SNDRV_PCM_INFO_PAUSE |
					SNDRV_PCM_INFO_MMAP |
					SNDRV_PCM_INFO_MMAP_VALID;

	if (card->support_grouping) {
		snd_card_asihpi_playback.info |= SNDRV_PCM_INFO_SYNC_START;
		FUNC10(substream);
	}

	/* struct is copied, so can create initializer dynamically */
	runtime->hw = snd_card_asihpi_playback;

	if (card->can_dma)
		err = FUNC8(runtime, 0,
					SNDRV_PCM_HW_PARAM_BUFFER_BYTES);
	if (err < 0)
		return err;

	FUNC9(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
		card->update_interval_frames);

	FUNC7(runtime, SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
		card->update_interval_frames, UINT_MAX);

	FUNC12("playback open\n");

	return 0;
}
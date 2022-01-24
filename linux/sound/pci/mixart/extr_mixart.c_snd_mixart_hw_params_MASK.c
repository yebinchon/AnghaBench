#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {scalar_t__ stream; int /*<<< orphan*/  number; TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mixart {int chip_idx; TYPE_3__* card; struct mixart_mgr* mgr; } ;
struct mixart_stream {int pcm_number; int channels; } ;
struct TYPE_4__ {scalar_t__ area; } ;
struct mixart_mgr {int /*<<< orphan*/  setup_mutex; TYPE_1__ bufferinfo; } ;
struct mixart_bufferinfo {int /*<<< orphan*/  available_length; int /*<<< orphan*/  buffer_address; } ;
typedef  int /*<<< orphan*/  snd_pcm_format_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_bytes; int /*<<< orphan*/  dma_addr; struct mixart_stream* private_data; } ;

/* Variables and functions */
 int MIXART_CAPTURE_STREAMS ; 
 int MIXART_MAX_STREAM_PER_CARD ; 
 int MIXART_PCM_ANALOG ; 
 int MIXART_PCM_DIGITAL ; 
 int MIXART_PLAYBACK_STREAMS ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mixart_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixart*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixart*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_hw_params*) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_hw_params*) ; 
 int FUNC9 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_mixart* FUNC10 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *subs,
                                struct snd_pcm_hw_params *hw)
{
	struct snd_mixart *chip = FUNC10(subs);
	struct mixart_mgr *mgr = chip->mgr;
	struct mixart_stream *stream = subs->runtime->private_data;
	snd_pcm_format_t format;
	int err;
	int channels;

	/* set up channels */
	channels = FUNC7(hw);

	/*  set up format for the stream */
	format = FUNC8(hw);

	FUNC4(&mgr->setup_mutex);

	/* update the stream levels */
	if( stream->pcm_number <= MIXART_PCM_DIGITAL ) {
		int is_aes = stream->pcm_number > MIXART_PCM_ANALOG;
		if( subs->stream == SNDRV_PCM_STREAM_PLAYBACK )
			FUNC3(chip, is_aes, subs->number);
		else
			FUNC2( chip, is_aes);
	}

	stream->channels = channels;

	/* set the format to the board */
	err = FUNC1(stream, format);
	if(err < 0) {
		FUNC5(&mgr->setup_mutex);
		return err;
	}

	/* allocate buffer */
	err = FUNC9(subs, FUNC6(hw));

	if (err > 0) {
		struct mixart_bufferinfo *bufferinfo;
		int i = (chip->chip_idx * MIXART_MAX_STREAM_PER_CARD) + (stream->pcm_number * (MIXART_PLAYBACK_STREAMS+MIXART_CAPTURE_STREAMS)) + subs->number;
		if( subs->stream == SNDRV_PCM_STREAM_CAPTURE ) {
			i += MIXART_PLAYBACK_STREAMS; /* in array capture is behind playback */
		}
		
		bufferinfo = (struct mixart_bufferinfo *)chip->mgr->bufferinfo.area;
		bufferinfo[i].buffer_address = subs->runtime->dma_addr;
		bufferinfo[i].available_length = subs->runtime->dma_bytes;
		/* bufferinfo[i].buffer_id  is already defined */

		FUNC0(chip->card->dev,
			"snd_mixart_hw_params(pcm %d) : dma_addr(%x) dma_bytes(%x) subs-number(%d)\n",
			i, bufferinfo[i].buffer_address,
				bufferinfo[i].available_length,
				subs->number);
	}
	FUNC5(&mgr->setup_mutex);

	return err;
}
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
struct snd_pcm_substream {scalar_t__ stream; TYPE_2__* runtime; TYPE_1__* pstr; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct hdspm {scalar_t__ playback_pid; scalar_t__ capture_pid; scalar_t__ system_sample_rate; int period_bytes; int* channel_map_out; unsigned char* playback_buffer; int* channel_map_in; unsigned char* capture_buffer; scalar_t__ io_type; int control_register; TYPE_3__* card; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ dma_area; } ;
struct TYPE_4__ {scalar_t__ stream; } ;

/* Variables and functions */
 scalar_t__ AES32 ; 
 int EBUSY ; 
 int /*<<< orphan*/  HDSPM_DMA_AREA_BYTES ; 
 int /*<<< orphan*/  HDSPM_controlRegister ; 
 int /*<<< orphan*/  HDSPM_pageAddressBufferIn ; 
 int /*<<< orphan*/  HDSPM_pageAddressBufferOut ; 
 int HDSPe_FLOAT_FORMAT ; 
 scalar_t__ SNDRV_PCM_FORMAT_FLOAT_LE ; 
 scalar_t__ SNDRV_PCM_FORMAT_S32_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct hdspm*,struct snd_pcm_substream*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct hdspm*,int) ; 
 int FUNC5 (struct hdspm*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hdspm*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC8 (struct snd_pcm_hw_params*) ; 
 int FUNC9 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC10 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC11 (struct hdspm*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct hdspm*,int,int) ; 
 int FUNC13 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct hdspm* FUNC14 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct snd_pcm_substream *substream,
			       struct snd_pcm_hw_params *params)
{
	struct hdspm *hdspm = FUNC14(substream);
	int err;
	int i;
	pid_t this_pid;
	pid_t other_pid;

	FUNC15(&hdspm->lock);

	if (substream->pstr->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		this_pid = hdspm->playback_pid;
		other_pid = hdspm->capture_pid;
	} else {
		this_pid = hdspm->capture_pid;
		other_pid = hdspm->playback_pid;
	}

	if (other_pid > 0 && this_pid != other_pid) {

		/* The other stream is open, and not by the same
		   task as this one. Make sure that the parameters
		   that matter are the same.
		   */

		if (FUNC10(params) != hdspm->system_sample_rate) {
			FUNC16(&hdspm->lock);
			FUNC0(params,
					SNDRV_PCM_HW_PARAM_RATE);
			return -EBUSY;
		}

		if (FUNC9(params) != hdspm->period_bytes / 4) {
			FUNC16(&hdspm->lock);
			FUNC0(params,
					SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
			return -EBUSY;
		}

	}
	/* We're fine. */
	FUNC16(&hdspm->lock);

	/* how to make sure that the rate matches an externally-set one ?   */

	FUNC15(&hdspm->lock);
	err = FUNC5(hdspm, FUNC10(params), 0);
	if (err < 0) {
		FUNC2(hdspm->card->dev, "err on hdspm_set_rate: %d\n", err);
		FUNC16(&hdspm->lock);
		FUNC0(params,
				SNDRV_PCM_HW_PARAM_RATE);
		return err;
	}
	FUNC16(&hdspm->lock);

	err = FUNC4(hdspm,
			FUNC9(params));
	if (err < 0) {
		FUNC2(hdspm->card->dev,
			 "err on hdspm_set_interrupt_interval: %d\n", err);
		FUNC0(params,
				SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
		return err;
	}

	/* Memory allocation, takashi's method, dont know if we should
	 * spinlock
	 */
	/* malloc all buffer even if not enabled to get sure */
	/* Update for MADI rev 204: we need to allocate for all channels,
	 * otherwise it doesn't work at 96kHz */

	err =
		FUNC13(substream, HDSPM_DMA_AREA_BYTES);
	if (err < 0) {
		FUNC2(hdspm->card->dev,
			 "err on snd_pcm_lib_malloc_pages: %d\n", err);
		return err;
	}

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {

		for (i = 0; i < FUNC7(params); ++i) {
			int c = hdspm->channel_map_out[i];

			if (c < 0)
				continue;      /* just make sure */
			FUNC3(hdspm, substream,
						   HDSPM_pageAddressBufferOut,
						   c);
			FUNC12(hdspm, c, 1);
		}

		hdspm->playback_buffer =
			(unsigned char *) substream->runtime->dma_area;
		FUNC1(hdspm->card->dev,
			"Allocated sample buffer for playback at %p\n",
				hdspm->playback_buffer);
	} else {
		for (i = 0; i < FUNC7(params); ++i) {
			int c = hdspm->channel_map_in[i];

			if (c < 0)
				continue;
			FUNC3(hdspm, substream,
						   HDSPM_pageAddressBufferIn,
						   c);
			FUNC11(hdspm, c, 1);
		}

		hdspm->capture_buffer =
			(unsigned char *) substream->runtime->dma_area;
		FUNC1(hdspm->card->dev,
			"Allocated sample buffer for capture at %p\n",
				hdspm->capture_buffer);
	}

	/*
	   dev_dbg(hdspm->card->dev,
	   "Allocated sample buffer for %s at 0x%08X\n",
	   substream->stream == SNDRV_PCM_STREAM_PLAYBACK ?
	   "playback" : "capture",
	   snd_pcm_sgbuf_get_addr(substream, 0));
	   */
	/*
	   dev_dbg(hdspm->card->dev,
	   "set_hwparams: %s %d Hz, %d channels, bs = %d\n",
	   substream->stream == SNDRV_PCM_STREAM_PLAYBACK ?
	   "playback" : "capture",
	   params_rate(params), params_channels(params),
	   params_buffer_size(params));
	   */


	/*  For AES cards, the float format bit is the same as the
	 *  preferred sync reference. Since we don't want to break
	 *  sync settings, we have to skip the remaining part of this
	 *  function.
	 */
	if (hdspm->io_type == AES32) {
		return 0;
	}


	/* Switch to native float format if requested */
	if (SNDRV_PCM_FORMAT_FLOAT_LE == FUNC8(params)) {
		if (!(hdspm->control_register & HDSPe_FLOAT_FORMAT))
			FUNC2(hdspm->card->dev,
				 "Switching to native 32bit LE float format.\n");

		hdspm->control_register |= HDSPe_FLOAT_FORMAT;
	} else if (SNDRV_PCM_FORMAT_S32_LE == FUNC8(params)) {
		if (hdspm->control_register & HDSPe_FLOAT_FORMAT)
			FUNC2(hdspm->card->dev,
				 "Switching to native 32bit LE integer format.\n");

		hdspm->control_register &= ~HDSPe_FLOAT_FORMAT;
	}
	FUNC6(hdspm, HDSPM_controlRegister, hdspm->control_register);

	return 0;
}
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
typedef  int u32 ;
struct sof_ipc_stream_params {int /*<<< orphan*/  stream_tag; scalar_t__ host_period_bytes; } ;
struct sof_intel_hda_dev {scalar_t__ no_ipc_position; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {int info; int flags; } ;
struct snd_dma_buffer {int dummy; } ;
struct hdac_stream {int format_val; int bufsize; int no_period_wakeup; int /*<<< orphan*/  stream_tag; int /*<<< orphan*/  period_bytes; struct snd_pcm_substream* substream; } ;
struct hdac_ext_stream {int dummy; } ;
struct TYPE_4__ {struct snd_dma_buffer* dma_buffer_p; struct hdac_stream* private_data; } ;
struct TYPE_3__ {struct sof_intel_hda_dev* hw_pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_DSP_SPIB_DISABLE ; 
 int SNDRV_PCM_HW_PARAMS_NO_PERIOD_WAKEUP ; 
 int SNDRV_PCM_INFO_NO_PERIOD_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_sof_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_sof_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_sof_dev*,struct hdac_ext_stream*,struct snd_dma_buffer*,struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,struct hdac_ext_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_hw_params*) ; 
 struct hdac_ext_stream* FUNC10 (struct hdac_stream*) ; 

int FUNC11(struct snd_sof_dev *sdev,
			  struct snd_pcm_substream *substream,
			  struct snd_pcm_hw_params *params,
			  struct sof_ipc_stream_params *ipc_params)
{
	struct hdac_stream *hstream = substream->runtime->private_data;
	struct hdac_ext_stream *stream = FUNC10(hstream);
	struct sof_intel_hda_dev *hda = sdev->pdata->hw_pdata;
	struct snd_dma_buffer *dmab;
	int ret;
	u32 size, rate, bits;

	size = FUNC5(params);
	rate = FUNC2(sdev, FUNC8(params));
	bits = FUNC1(sdev, FUNC9(params));

	hstream->substream = substream;

	dmab = substream->runtime->dma_buffer_p;

	hstream->format_val = rate | bits | (FUNC6(params) - 1);
	hstream->bufsize = size;
	hstream->period_bytes = FUNC7(params);
	hstream->no_period_wakeup  =
			(params->info & SNDRV_PCM_INFO_NO_PERIOD_WAKEUP) &&
			(params->flags & SNDRV_PCM_HW_PARAMS_NO_PERIOD_WAKEUP);

	ret = FUNC3(sdev, stream, dmab, params);
	if (ret < 0) {
		FUNC0(sdev->dev, "error: hdac prepare failed: %x\n", ret);
		return ret;
	}

	/* disable SPIB, to enable buffer wrap for stream */
	FUNC4(sdev, stream, HDA_DSP_SPIB_DISABLE, 0);

	/* set host_period_bytes to 0 if no IPC position */
	if (hda && hda->no_ipc_position)
		ipc_params->host_period_bytes = 0;

	ipc_params->stream_tag = hstream->stream_tag;

	return 0;
}
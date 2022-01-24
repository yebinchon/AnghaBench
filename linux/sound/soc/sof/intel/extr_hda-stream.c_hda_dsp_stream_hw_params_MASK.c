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
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dma_buffer {int dummy; } ;
struct TYPE_3__ {scalar_t__ addr; } ;
struct hdac_stream {int index; int frags; int stream_tag; int bufsize; int format_val; scalar_t__ direction; int fifo_size; TYPE_1__ bdl; scalar_t__* posbuf; } ;
struct hdac_ext_stream {struct hdac_stream hstream; } ;
struct TYPE_4__ {scalar_t__ addr; } ;
struct hdac_bus {TYPE_2__ posbuf; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HDA_DSP_HDA_BAR ; 
 int /*<<< orphan*/  HDA_DSP_PP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_REG_POLL_INTERVAL_US ; 
 int HDA_DSP_STREAM_RESET_TIMEOUT ; 
 int /*<<< orphan*/  HDA_DSP_STREAM_RUN_TIMEOUT ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int SOF_HDA_ADSP_DPLBASE ; 
 int SOF_HDA_ADSP_DPLBASE_ENABLE ; 
 int SOF_HDA_ADSP_DPUBASE ; 
 int SOF_HDA_ADSP_REG_CL_SD_BDLPL ; 
 int SOF_HDA_ADSP_REG_CL_SD_BDLPU ; 
 int SOF_HDA_ADSP_REG_CL_SD_CBL ; 
 int SOF_HDA_ADSP_REG_CL_SD_FIFOSIZE ; 
 int SOF_HDA_ADSP_REG_CL_SD_FORMAT ; 
 int SOF_HDA_ADSP_REG_CL_SD_LVI ; 
 int SOF_HDA_ADSP_REG_CL_SD_STS ; 
 int SOF_HDA_CL_DMA_SD_INT_MASK ; 
 int SOF_HDA_CL_SD_CTL_STREAM_TAG_MASK ; 
 int SOF_HDA_CL_SD_CTL_STREAM_TAG_SHIFT ; 
 int SOF_HDA_REG_PP_PPCTL ; 
 int SOF_HDA_SD_CTL_DMA_START ; 
 int FUNC0 (struct hdac_stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct snd_sof_dev*,struct snd_dma_buffer*,struct hdac_stream*) ; 
 int FUNC3 (struct snd_sof_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct snd_sof_dev*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_sof_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sof_dev*,int /*<<< orphan*/ ,int,int) ; 
 struct hdac_bus* FUNC7 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (scalar_t__) ; 

int FUNC10(struct snd_sof_dev *sdev,
			     struct hdac_ext_stream *stream,
			     struct snd_dma_buffer *dmab,
			     struct snd_pcm_hw_params *params)
{
	struct hdac_bus *bus = FUNC7(sdev);
	struct hdac_stream *hstream = &stream->hstream;
	int sd_offset = FUNC0(hstream);
	int ret, timeout = HDA_DSP_STREAM_RESET_TIMEOUT;
	u32 dma_start = SOF_HDA_SD_CTL_DMA_START;
	u32 val, mask;
	u32 run;

	if (!stream) {
		FUNC1(sdev->dev, "error: no stream available\n");
		return -ENODEV;
	}

	/* decouple host and link DMA */
	mask = 0x1 << hstream->index;
	FUNC5(sdev, HDA_DSP_PP_BAR, SOF_HDA_REG_PP_PPCTL,
				mask, mask);

	if (!dmab) {
		FUNC1(sdev->dev, "error: no dma buffer allocated!\n");
		return -ENODEV;
	}

	/* clear stream status */
	FUNC5(sdev, HDA_DSP_HDA_BAR, sd_offset,
				SOF_HDA_CL_DMA_SD_INT_MASK |
				SOF_HDA_SD_CTL_DMA_START, 0);

	ret = FUNC4(sdev, HDA_DSP_HDA_BAR,
					    sd_offset, run,
					    !(run & dma_start),
					    HDA_DSP_REG_POLL_INTERVAL_US,
					    HDA_DSP_STREAM_RUN_TIMEOUT);

	if (ret)
		return ret;

	FUNC5(sdev, HDA_DSP_HDA_BAR,
				sd_offset + SOF_HDA_ADSP_REG_CL_SD_STS,
				SOF_HDA_CL_DMA_SD_INT_MASK,
				SOF_HDA_CL_DMA_SD_INT_MASK);

	/* stream reset */
	FUNC5(sdev, HDA_DSP_HDA_BAR, sd_offset, 0x1,
				0x1);
	FUNC8(3);
	do {
		val = FUNC3(sdev, HDA_DSP_HDA_BAR,
				       sd_offset);
		if (val & 0x1)
			break;
	} while (--timeout);
	if (timeout == 0) {
		FUNC1(sdev->dev, "error: stream reset failed\n");
		return -ETIMEDOUT;
	}

	timeout = HDA_DSP_STREAM_RESET_TIMEOUT;
	FUNC5(sdev, HDA_DSP_HDA_BAR, sd_offset, 0x1,
				0x0);

	/* wait for hardware to report that stream is out of reset */
	FUNC8(3);
	do {
		val = FUNC3(sdev, HDA_DSP_HDA_BAR,
				       sd_offset);
		if ((val & 0x1) == 0)
			break;
	} while (--timeout);
	if (timeout == 0) {
		FUNC1(sdev->dev, "error: timeout waiting for stream reset\n");
		return -ETIMEDOUT;
	}

	if (hstream->posbuf)
		*hstream->posbuf = 0;

	/* reset BDL address */
	FUNC6(sdev, HDA_DSP_HDA_BAR,
			  sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPL,
			  0x0);
	FUNC6(sdev, HDA_DSP_HDA_BAR,
			  sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPU,
			  0x0);

	/* clear stream status */
	FUNC5(sdev, HDA_DSP_HDA_BAR, sd_offset,
				SOF_HDA_CL_DMA_SD_INT_MASK |
				SOF_HDA_SD_CTL_DMA_START, 0);

	ret = FUNC4(sdev, HDA_DSP_HDA_BAR,
					    sd_offset, run,
					    !(run & dma_start),
					    HDA_DSP_REG_POLL_INTERVAL_US,
					    HDA_DSP_STREAM_RUN_TIMEOUT);

	if (ret)
		return ret;

	FUNC5(sdev, HDA_DSP_HDA_BAR,
				sd_offset + SOF_HDA_ADSP_REG_CL_SD_STS,
				SOF_HDA_CL_DMA_SD_INT_MASK,
				SOF_HDA_CL_DMA_SD_INT_MASK);

	hstream->frags = 0;

	ret = FUNC2(sdev, dmab, hstream);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: set up of BDL failed\n");
		return ret;
	}

	/* program stream tag to set up stream descriptor for DMA */
	FUNC5(sdev, HDA_DSP_HDA_BAR, sd_offset,
				SOF_HDA_CL_SD_CTL_STREAM_TAG_MASK,
				hstream->stream_tag <<
				SOF_HDA_CL_SD_CTL_STREAM_TAG_SHIFT);

	/* program cyclic buffer length */
	FUNC6(sdev, HDA_DSP_HDA_BAR,
			  sd_offset + SOF_HDA_ADSP_REG_CL_SD_CBL,
			  hstream->bufsize);

	/*
	 * Recommended hardware programming sequence for HDAudio DMA format
	 *
	 * 1. Put DMA into coupled mode by clearing PPCTL.PROCEN bit
	 *    for corresponding stream index before the time of writing
	 *    format to SDxFMT register.
	 * 2. Write SDxFMT
	 * 3. Set PPCTL.PROCEN bit for corresponding stream index to
	 *    enable decoupled mode
	 */

	/* couple host and link DMA, disable DSP features */
	FUNC5(sdev, HDA_DSP_PP_BAR, SOF_HDA_REG_PP_PPCTL,
				mask, 0);

	/* program stream format */
	FUNC5(sdev, HDA_DSP_HDA_BAR,
				sd_offset +
				SOF_HDA_ADSP_REG_CL_SD_FORMAT,
				0xffff, hstream->format_val);

	/* decouple host and link DMA, enable DSP features */
	FUNC5(sdev, HDA_DSP_PP_BAR, SOF_HDA_REG_PP_PPCTL,
				mask, mask);

	/* program last valid index */
	FUNC5(sdev, HDA_DSP_HDA_BAR,
				sd_offset + SOF_HDA_ADSP_REG_CL_SD_LVI,
				0xffff, (hstream->frags - 1));

	/* program BDL address */
	FUNC6(sdev, HDA_DSP_HDA_BAR,
			  sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPL,
			  (u32)hstream->bdl.addr);
	FUNC6(sdev, HDA_DSP_HDA_BAR,
			  sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPU,
			  FUNC9(hstream->bdl.addr));

	/* enable position buffer */
	if (!(FUNC3(sdev, HDA_DSP_HDA_BAR, SOF_HDA_ADSP_DPLBASE)
				& SOF_HDA_ADSP_DPLBASE_ENABLE)) {
		FUNC6(sdev, HDA_DSP_HDA_BAR, SOF_HDA_ADSP_DPUBASE,
				  FUNC9(bus->posbuf.addr));
		FUNC6(sdev, HDA_DSP_HDA_BAR, SOF_HDA_ADSP_DPLBASE,
				  (u32)bus->posbuf.addr |
				  SOF_HDA_ADSP_DPLBASE_ENABLE);
	}

	/* set interrupt enable bits */
	FUNC5(sdev, HDA_DSP_HDA_BAR, sd_offset,
				SOF_HDA_CL_DMA_SD_INT_MASK,
				SOF_HDA_CL_DMA_SD_INT_MASK);

	/* read FIFO size */
	if (hstream->direction == SNDRV_PCM_STREAM_PLAYBACK) {
		hstream->fifo_size =
			FUNC3(sdev, HDA_DSP_HDA_BAR,
					 sd_offset +
					 SOF_HDA_ADSP_REG_CL_SD_FIFOSIZE);
		hstream->fifo_size &= 0xffff;
		hstream->fifo_size += 1;
	} else {
		hstream->fifo_size = 0;
	}

	return ret;
}
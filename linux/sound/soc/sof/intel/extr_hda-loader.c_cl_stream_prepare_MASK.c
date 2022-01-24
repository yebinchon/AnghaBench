#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct snd_dma_buffer {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hdac_stream {unsigned int format_val; unsigned int bufsize; int stream_tag; scalar_t__ period_bytes; int /*<<< orphan*/ * substream; } ;
struct hdac_ext_stream {struct hdac_stream hstream; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  HDA_DSP_SPIB_ENABLE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV_SG ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct hdac_ext_stream* FUNC1 (struct snd_sof_dev*,int) ; 
 int FUNC2 (struct snd_sof_dev*,struct hdac_ext_stream*,struct snd_dma_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sof_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,struct hdac_ext_stream*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,struct snd_dma_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_dma_buffer*) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_sof_dev *sdev, unsigned int format,
			     unsigned int size, struct snd_dma_buffer *dmab,
			     int direction)
{
	struct hdac_ext_stream *dsp_stream;
	struct hdac_stream *hstream;
	struct pci_dev *pci = FUNC7(sdev->dev);
	int ret;

	if (direction != SNDRV_PCM_STREAM_PLAYBACK) {
		FUNC0(sdev->dev, "error: code loading DMA is playback only\n");
		return -EINVAL;
	}

	dsp_stream = FUNC1(sdev, direction);

	if (!dsp_stream) {
		FUNC0(sdev->dev, "error: no stream available\n");
		return -ENODEV;
	}
	hstream = &dsp_stream->hstream;
	hstream->substream = NULL;

	/* allocate DMA buffer */
	ret = FUNC5(SNDRV_DMA_TYPE_DEV_SG, &pci->dev, size, dmab);
	if (ret < 0) {
		FUNC0(sdev->dev, "error: memory alloc failed: %x\n", ret);
		goto error;
	}

	hstream->period_bytes = 0;/* initialize period_bytes */
	hstream->format_val = format;
	hstream->bufsize = size;

	ret = FUNC2(sdev, dsp_stream, dmab, NULL);
	if (ret < 0) {
		FUNC0(sdev->dev, "error: hdac prepare failed: %x\n", ret);
		goto error;
	}

	FUNC4(sdev, dsp_stream, HDA_DSP_SPIB_ENABLE, size);

	return hstream->stream_tag;

error:
	FUNC3(sdev, direction, hstream->stream_tag);
	FUNC6(dmab);
	return ret;
}
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
struct snd_sof_dev {int dummy; } ;
struct snd_dma_buffer {int /*<<< orphan*/ * area; } ;
struct hdac_stream {scalar_t__ format_val; scalar_t__ bufsize; int /*<<< orphan*/ * substream; scalar_t__ running; int /*<<< orphan*/  stream_tag; } ;
struct hdac_ext_stream {struct hdac_stream hstream; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_DSP_HDA_BAR ; 
 int /*<<< orphan*/  HDA_DSP_SPIB_DISABLE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int SOF_HDA_ADSP_REG_CL_SD_BDLPL ; 
 int SOF_HDA_ADSP_REG_CL_SD_BDLPU ; 
 int FUNC0 (struct hdac_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_sof_dev*,struct hdac_ext_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_dma_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_sof_dev *sdev, struct snd_dma_buffer *dmab,
		      struct hdac_ext_stream *stream)
{
	struct hdac_stream *hstream = &stream->hstream;
	int sd_offset = FUNC0(hstream);
	int ret;

	ret = FUNC2(sdev, stream, HDA_DSP_SPIB_DISABLE, 0);

	FUNC1(sdev, SNDRV_PCM_STREAM_PLAYBACK,
			   hstream->stream_tag);
	hstream->running = 0;
	hstream->substream = NULL;

	/* reset BDL address */
	FUNC4(sdev, HDA_DSP_HDA_BAR,
			  sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPL, 0);
	FUNC4(sdev, HDA_DSP_HDA_BAR,
			  sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPU, 0);

	FUNC4(sdev, HDA_DSP_HDA_BAR, sd_offset, 0);
	FUNC3(dmab);
	dmab->area = NULL;
	hstream->bufsize = 0;
	hstream->format_val = 0;

	return ret;
}
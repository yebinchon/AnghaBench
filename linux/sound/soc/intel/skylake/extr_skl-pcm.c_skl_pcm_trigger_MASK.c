#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_widget {int /*<<< orphan*/  ignore_suspend; } ;
struct snd_soc_dai {struct snd_soc_dapm_widget* capture_widget; struct snd_soc_dapm_widget* playback_widget; int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct skl_module_cfg {int /*<<< orphan*/  pipe; } ;
struct skl_dev {int dummy; } ;
struct hdac_ext_stream {int /*<<< orphan*/  lpib; int /*<<< orphan*/  dpib; } ;
struct hdac_bus {int remap_addr; } ;
struct TYPE_3__ {int index; } ;

/* Variables and functions */
 int AZX_REG_VS_SDXDPIB_XBASE ; 
 int AZX_REG_VS_SDXDPIB_XINTERVAL ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 struct hdac_bus* FUNC0 (struct snd_pcm_substream*) ; 
 struct hdac_ext_stream* FUNC1 (struct snd_pcm_substream*) ; 
 struct skl_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct hdac_ext_stream*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct snd_pcm_substream*,int) ; 
 int FUNC6 (struct skl_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct skl_dev*,int /*<<< orphan*/ ) ; 
 struct skl_module_cfg* FUNC8 (struct snd_soc_dai*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hdac_bus*,struct hdac_ext_stream*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct hdac_bus*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hdac_bus*,struct hdac_ext_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hdac_ext_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct snd_pcm_substream *substream, int cmd,
		struct snd_soc_dai *dai)
{
	struct skl_dev *skl = FUNC2(dai->dev);
	struct skl_module_cfg *mconfig;
	struct hdac_bus *bus = FUNC0(substream);
	struct hdac_ext_stream *stream = FUNC1(substream);
	struct snd_soc_dapm_widget *w;
	int ret;

	mconfig = FUNC8(dai, substream->stream);
	if (!mconfig)
		return -EIO;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		w = dai->playback_widget;
	else
		w = dai->capture_widget;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_RESUME:
		if (!w->ignore_suspend) {
			/*
			 * enable DMA Resume enable bit for the stream, set the
			 * dpib & lpib position to resume before starting the
			 * DMA
			 */
			FUNC10(bus, true,
						FUNC3(stream)->index);
			FUNC11(bus, stream,
							stream->lpib);
			FUNC12(stream, stream->lpib);
		}
		/* fall through */

	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		/*
		 * Start HOST DMA and Start FE Pipe.This is to make sure that
		 * there are no underrun/overrun in the case when the FE
		 * pipeline is started but there is a delay in starting the
		 * DMA channel on the host.
		 */
		ret = FUNC5(substream, cmd);
		if (ret < 0)
			return ret;
		return FUNC6(skl, mconfig->pipe);
		break;

	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_STOP:
		/*
		 * Stop FE Pipe first and stop DMA. This is to make sure that
		 * there are no underrun/overrun in the case if there is a delay
		 * between the two operations.
		 */
		ret = FUNC7(skl, mconfig->pipe);
		if (ret < 0)
			return ret;

		ret = FUNC5(substream, cmd);
		if ((cmd == SNDRV_PCM_TRIGGER_SUSPEND) && !w->ignore_suspend) {
			/* save the dpib and lpib positions */
			stream->dpib = FUNC4(bus->remap_addr +
					AZX_REG_VS_SDXDPIB_XBASE +
					(AZX_REG_VS_SDXDPIB_XINTERVAL *
					FUNC3(stream)->index));

			stream->lpib = FUNC13(
							FUNC3(stream));
			FUNC9(bus, stream, false);
		}
		break;

	default:
		return -EINVAL;
	}

	return 0;
}
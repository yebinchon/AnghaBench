#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sprd_compr_stream {int num_channels; int /*<<< orphan*/  received_total; TYPE_1__* compr_ops; struct sprd_compr_dma* dma; int /*<<< orphan*/  received_stage1; int /*<<< orphan*/  received_stage0; int /*<<< orphan*/  stage1_pointer; int /*<<< orphan*/  copied_total; } ;
struct sprd_compr_dma {int /*<<< orphan*/  chan; int /*<<< orphan*/  cookie; int /*<<< orphan*/  desc; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_compr_stream {int direction; struct snd_soc_pcm_runtime* private_data; struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct sprd_compr_stream* private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* start ) (int) ;int (* stop ) (int) ;int (* pause ) (int) ;int (* pause_release ) (int) ;int (* drain ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 135 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 134 
#define  SNDRV_PCM_TRIGGER_RESUME 133 
#define  SNDRV_PCM_TRIGGER_START 132 
#define  SNDRV_PCM_TRIGGER_STOP 131 
#define  SNDRV_PCM_TRIGGER_SUSPEND 130 
 int SND_COMPRESS_PLAYBACK ; 
#define  SND_COMPR_TRIGGER_DRAIN 129 
#define  SND_COMPR_TRIGGER_PARTIAL_DRAIN 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC7 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct snd_compr_stream *cstream,
				       int cmd)
{
	struct snd_compr_runtime *runtime = cstream->runtime;
	struct sprd_compr_stream *stream = runtime->private_data;
	struct snd_soc_pcm_runtime *rtd = cstream->private_data;
	struct snd_soc_component *component =
		FUNC7(rtd, DRV_NAME);
	struct device *dev = component->dev;
	int channels = stream->num_channels, ret = 0, i;
	int stream_id = cstream->direction;

	if (cstream->direction != SND_COMPRESS_PLAYBACK) {
		FUNC0(dev, "unsupported compress direction\n");
		return -EINVAL;
	}

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		for (i = channels - 1; i >= 0; i--) {
			struct sprd_compr_dma *dma = &stream->dma[i];

			if (!dma->desc)
				continue;

			dma->cookie = FUNC5(dma->desc);
			ret = FUNC2(dma->cookie);
			if (ret) {
				FUNC0(dev, "failed to submit request: %d\n",
					ret);
				return ret;
			}
		}

		for (i = channels - 1; i >= 0; i--) {
			struct sprd_compr_dma *dma = &stream->dma[i];

			if (dma->chan)
				FUNC1(dma->chan);
		}

		ret = stream->compr_ops->start(stream_id);
		break;

	case SNDRV_PCM_TRIGGER_STOP:
		for (i = channels - 1; i >= 0; i--) {
			struct sprd_compr_dma *dma = &stream->dma[i];

			if (dma->chan)
				FUNC6(dma->chan);
		}

		stream->copied_total = 0;
		stream->stage1_pointer  = 0;
		stream->received_total = 0;
		stream->received_stage0 = 0;
		stream->received_stage1 = 0;

		ret = stream->compr_ops->stop(stream_id);
		break;

	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		for (i = channels - 1; i >= 0; i--) {
			struct sprd_compr_dma *dma = &stream->dma[i];

			if (dma->chan)
				FUNC3(dma->chan);
		}

		ret = stream->compr_ops->pause(stream_id);
		break;

	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		for (i = channels - 1; i >= 0; i--) {
			struct sprd_compr_dma *dma = &stream->dma[i];

			if (dma->chan)
				FUNC4(dma->chan);
		}

		ret = stream->compr_ops->pause_release(stream_id);
		break;

	case SND_COMPR_TRIGGER_PARTIAL_DRAIN:
	case SND_COMPR_TRIGGER_DRAIN:
		ret = stream->compr_ops->drain(stream->received_total);
		break;

	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}
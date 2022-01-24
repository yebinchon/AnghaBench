#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int info; } ;
struct xen_snd_front_pcm_stream_info {size_t index; TYPE_7__* evt_pair; struct xen_snd_front_info* front_info; TYPE_3__ pcm_hw; } ;
struct xen_snd_front_pcm_instance_info {TYPE_1__* card_info; } ;
struct xen_snd_front_info {TYPE_7__* evt_pairs; TYPE_2__* xb_dev; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_3__ hw; } ;
struct device {int dummy; } ;
struct TYPE_11__ {struct snd_pcm_substream* substream; } ;
struct TYPE_12__ {TYPE_4__ evt; } ;
struct TYPE_13__ {TYPE_5__ u; } ;
struct TYPE_14__ {TYPE_6__ evt; } ;
struct TYPE_9__ {struct device dev; } ;
struct TYPE_8__ {struct xen_snd_front_info* front_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int SNDRV_PCM_INFO_BATCH ; 
 int SNDRV_PCM_INFO_DOUBLE ; 
 int SNDRV_PCM_INFO_INTERLEAVED ; 
 int SNDRV_PCM_INFO_MMAP ; 
 int SNDRV_PCM_INFO_MMAP_VALID ; 
 int SNDRV_PCM_INFO_NONINTERLEAVED ; 
 int SNDRV_PCM_INFO_PAUSE ; 
 int SNDRV_PCM_INFO_RESUME ; 
 int /*<<< orphan*/  alsa_hw_rule ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xen_snd_front_pcm_stream_info*,int /*<<< orphan*/ ,int) ; 
 struct xen_snd_front_pcm_instance_info* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_snd_front_pcm_stream_info*) ; 
 struct xen_snd_front_pcm_stream_info* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct xen_snd_front_pcm_instance_info *pcm_instance =
			FUNC2(substream);
	struct xen_snd_front_pcm_stream_info *stream = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct xen_snd_front_info *front_info =
			pcm_instance->card_info->front_info;
	struct device *dev = &front_info->xb_dev->dev;
	int ret;

	/*
	 * Return our HW properties: override defaults with those configured
	 * via XenStore.
	 */
	runtime->hw = stream->pcm_hw;
	runtime->hw.info &= ~(SNDRV_PCM_INFO_MMAP |
			      SNDRV_PCM_INFO_MMAP_VALID |
			      SNDRV_PCM_INFO_DOUBLE |
			      SNDRV_PCM_INFO_BATCH |
			      SNDRV_PCM_INFO_NONINTERLEAVED |
			      SNDRV_PCM_INFO_RESUME |
			      SNDRV_PCM_INFO_PAUSE);
	runtime->hw.info |= SNDRV_PCM_INFO_INTERLEAVED;

	stream->evt_pair = &front_info->evt_pairs[stream->index];

	stream->front_info = front_info;

	stream->evt_pair->evt.u.evt.substream = substream;

	FUNC3(stream);

	FUNC5(stream->evt_pair, true);

	ret = FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_FORMAT,
				  alsa_hw_rule, stream,
				  SNDRV_PCM_HW_PARAM_FORMAT, -1);
	if (ret) {
		FUNC0(dev, "Failed to add HW rule for SNDRV_PCM_HW_PARAM_FORMAT\n");
		return ret;
	}

	ret = FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				  alsa_hw_rule, stream,
				  SNDRV_PCM_HW_PARAM_RATE, -1);
	if (ret) {
		FUNC0(dev, "Failed to add HW rule for SNDRV_PCM_HW_PARAM_RATE\n");
		return ret;
	}

	ret = FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
				  alsa_hw_rule, stream,
				  SNDRV_PCM_HW_PARAM_CHANNELS, -1);
	if (ret) {
		FUNC0(dev, "Failed to add HW rule for SNDRV_PCM_HW_PARAM_CHANNELS\n");
		return ret;
	}

	ret = FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
				  alsa_hw_rule, stream,
				  SNDRV_PCM_HW_PARAM_PERIOD_SIZE, -1);
	if (ret) {
		FUNC0(dev, "Failed to add HW rule for SNDRV_PCM_HW_PARAM_PERIOD_SIZE\n");
		return ret;
	}

	ret = FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
				  alsa_hw_rule, stream,
				  SNDRV_PCM_HW_PARAM_BUFFER_SIZE, -1);
	if (ret) {
		FUNC0(dev, "Failed to add HW rule for SNDRV_PCM_HW_PARAM_BUFFER_SIZE\n");
		return ret;
	}

	return 0;
}
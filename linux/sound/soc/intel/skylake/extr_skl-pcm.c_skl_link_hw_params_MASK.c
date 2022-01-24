#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {TYPE_4__* driver; TYPE_1__* component; int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct skl_pipe_params {scalar_t__ stream; int link_dma_id; int /*<<< orphan*/  link_bps; int /*<<< orphan*/  format; int /*<<< orphan*/  link_index; int /*<<< orphan*/  s_freq; int /*<<< orphan*/  ch; int /*<<< orphan*/  s_fmt; int /*<<< orphan*/  member_0; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_ext_link {int /*<<< orphan*/  index; } ;
struct hdac_bus {int dummy; } ;
struct TYPE_10__ {int stream_tag; } ;
struct TYPE_8__ {int /*<<< orphan*/  sig_bits; } ;
struct TYPE_7__ {int /*<<< orphan*/  sig_bits; } ;
struct TYPE_9__ {TYPE_3__ capture; TYPE_2__ playback; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  HDAC_EXT_STREAM_TYPE_LINK ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 struct hdac_bus* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (struct hdac_ext_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_soc_dai*,struct skl_pipe_params*) ; 
 struct hdac_ext_link* FUNC6 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 struct hdac_ext_stream* FUNC7 (struct hdac_bus*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct snd_soc_pcm_runtime* FUNC9 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dai*,struct snd_pcm_substream*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_dai*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct hdac_bus *bus = FUNC0(dai->dev);
	struct hdac_ext_stream *link_dev;
	struct snd_soc_pcm_runtime *rtd = FUNC9(substream);
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct skl_pipe_params p_params = {0};
	struct hdac_ext_link *link;
	int stream_tag;

	link_dev = FUNC7(bus, substream,
					HDAC_EXT_STREAM_TYPE_LINK);
	if (!link_dev)
		return -EBUSY;

	FUNC10(dai, substream, (void *)link_dev);

	link = FUNC6(bus, codec_dai->component->name);
	if (!link)
		return -EINVAL;

	stream_tag = FUNC1(link_dev)->stream_tag;

	/* set the stream tag in the codec dai dma params  */
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		FUNC11(codec_dai, stream_tag, 0, 0, 0);
	else
		FUNC11(codec_dai, 0, stream_tag, 0, 0);

	p_params.s_fmt = FUNC8(FUNC3(params));
	p_params.ch = FUNC2(params);
	p_params.s_freq = FUNC4(params);
	p_params.stream = substream->stream;
	p_params.link_dma_id = stream_tag - 1;
	p_params.link_index = link->index;
	p_params.format = FUNC3(params);

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		p_params.link_bps = codec_dai->driver->playback.sig_bits;
	else
		p_params.link_bps = codec_dai->driver->capture.sig_bits;

	return FUNC5(dai, &p_params);
}
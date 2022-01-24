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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  addr_width; } ;
struct sun4i_i2s {int slots; int slot_width; int /*<<< orphan*/  field_fmt_sr; int /*<<< orphan*/  field_fmt_wss; TYPE_2__* variant; TYPE_1__ playback_dma_data; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {int (* set_chan_cfg ) (struct sun4i_i2s*,struct snd_pcm_hw_params*) ;int (* get_sr ) (struct sun4i_i2s*,unsigned int) ;int (* get_wss ) (struct sun4i_i2s*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_2_BYTES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct sun4i_i2s* FUNC6 (struct snd_soc_dai*) ; 
 int FUNC7 (struct sun4i_i2s*,struct snd_pcm_hw_params*) ; 
 int FUNC8 (struct sun4i_i2s*,unsigned int) ; 
 int FUNC9 (struct sun4i_i2s*,unsigned int) ; 
 int FUNC10 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream,
			       struct snd_pcm_hw_params *params,
			       struct snd_soc_dai *dai)
{
	struct sun4i_i2s *i2s = FUNC6(dai);
	unsigned int word_size = FUNC4(params);
	unsigned int slot_width = FUNC2(params);
	unsigned int channels = FUNC1(params);
	unsigned int slots = channels;
	int ret, sr, wss;
	u32 width;

	if (i2s->slots)
		slots = i2s->slots;

	if (i2s->slot_width)
		slot_width = i2s->slot_width;

	ret = i2s->variant->set_chan_cfg(i2s, params);
	if (ret < 0) {
		FUNC0(dai->dev, "Invalid channel configuration\n");
		return ret;
	}

	switch (FUNC2(params)) {
	case 16:
		width = DMA_SLAVE_BUSWIDTH_2_BYTES;
		break;
	default:
		FUNC0(dai->dev, "Unsupported physical sample width: %d\n",
			FUNC2(params));
		return -EINVAL;
	}
	i2s->playback_dma_data.addr_width = width;

	sr = i2s->variant->get_sr(i2s, word_size);
	if (sr < 0)
		return -EINVAL;

	wss = i2s->variant->get_wss(i2s, slot_width);
	if (wss < 0)
		return -EINVAL;

	FUNC5(i2s->field_fmt_wss, wss);
	FUNC5(i2s->field_fmt_sr, sr);

	return FUNC10(dai, FUNC3(params),
				      slots, slot_width);
}
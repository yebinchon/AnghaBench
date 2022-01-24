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
struct snd_soc_dai {int id; TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct madera_priv {int* tdm_width; int* tdm_slots; struct madera* madera; } ;
struct TYPE_5__ {unsigned int* max_channels_clocked; } ;
struct TYPE_6__ {TYPE_2__ codec; } ;
struct madera {int /*<<< orphan*/  regmap; TYPE_3__ pdata; } ;
struct TYPE_4__ {int base; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int MADERA_AIF1RX_BCPF_MASK ; 
 int MADERA_AIF1RX_SLOT_LEN_MASK ; 
 int MADERA_AIF1RX_WL_MASK ; 
 int MADERA_AIF1TX_SLOT_LEN_MASK ; 
 int MADERA_AIF1TX_WL_MASK ; 
 int MADERA_AIF1TX_WL_SHIFT ; 
 int MADERA_AIF1_BCLK_FREQ_MASK ; 
 unsigned int MADERA_AIF1_FMT_MASK ; 
 scalar_t__ MADERA_AIF_BCLK_CTRL ; 
 scalar_t__ MADERA_AIF_FORMAT ; 
 scalar_t__ MADERA_AIF_FRAME_CTRL_1 ; 
 scalar_t__ MADERA_AIF_FRAME_CTRL_2 ; 
 scalar_t__ MADERA_AIF_RX_BCLK_RATE ; 
 scalar_t__ MADERA_AIF_RX_ENABLES ; 
 scalar_t__ MADERA_AIF_TX_ENABLES ; 
 unsigned int MADERA_FMT_I2S_MODE ; 
 int* madera_44k1_bclk_rates ; 
 int* madera_48k_bclk_rates ; 
 int FUNC1 (struct snd_soc_component*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dai*,char*,unsigned int) ; 
 int FUNC4 (struct snd_pcm_substream*,struct snd_pcm_hw_params*,struct snd_soc_dai*) ; 
 unsigned int FUNC5 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC7 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int,unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 struct madera_priv* FUNC11 (struct snd_soc_component*) ; 
 int FUNC12 (struct snd_soc_component*,scalar_t__,unsigned int*) ; 
 int FUNC13 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC14(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct madera_priv *priv = FUNC11(component);
	struct madera *madera = priv->madera;
	int base = dai->driver->base;
	const int *rates;
	int i, ret;
	unsigned int val;
	unsigned int channels = FUNC5(params);
	unsigned int rate = FUNC7(params);
	unsigned int chan_limit =
			madera->pdata.codec.max_channels_clocked[dai->id - 1];
	int tdm_width = priv->tdm_width[dai->id - 1];
	int tdm_slots = priv->tdm_slots[dai->id - 1];
	int bclk, lrclk, wl, frame, bclk_target, num_rates;
	int reconfig;
	unsigned int aif_tx_state = 0, aif_rx_state = 0;

	if (rate % 4000) {
		rates = &madera_44k1_bclk_rates[0];
		num_rates = FUNC0(madera_44k1_bclk_rates);
	} else {
		rates = &madera_48k_bclk_rates[0];
		num_rates = FUNC0(madera_48k_bclk_rates);
	}

	wl = FUNC10(FUNC6(params));

	if (tdm_slots) {
		FUNC2(dai, "Configuring for %d %d bit TDM slots\n",
			       tdm_slots, tdm_width);
		bclk_target = tdm_slots * tdm_width * rate;
		channels = tdm_slots;
	} else {
		bclk_target = FUNC13(params);
		tdm_width = wl;
	}

	if (chan_limit && chan_limit < channels) {
		FUNC2(dai, "Limiting to %d channels\n", chan_limit);
		bclk_target /= channels;
		bclk_target *= chan_limit;
	}

	/* Force multiple of 2 channels for I2S mode */
	ret = FUNC12(component, base + MADERA_AIF_FORMAT, &val);
	if (ret)
		return ret;

	val &= MADERA_AIF1_FMT_MASK;
	if ((channels & 1) && val == MADERA_FMT_I2S_MODE) {
		FUNC2(dai, "Forcing stereo mode\n");
		bclk_target /= channels;
		bclk_target *= channels + 1;
	}

	for (i = 0; i < num_rates; i++) {
		if (rates[i] >= bclk_target && rates[i] % rate == 0) {
			bclk = i;
			break;
		}
	}

	if (i == num_rates) {
		FUNC3(dai, "Unsupported sample rate %dHz\n", rate);
		return -EINVAL;
	}

	lrclk = rates[bclk] / rate;

	FUNC2(dai, "BCLK %dHz LRCLK %dHz\n",
		       rates[bclk], rates[bclk] / lrclk);

	frame = wl << MADERA_AIF1TX_WL_SHIFT | tdm_width;

	reconfig = FUNC1(component, base, bclk, lrclk, frame);
	if (reconfig < 0)
		return reconfig;

	if (reconfig) {
		/* Save AIF TX/RX state */
		FUNC8(madera->regmap, base + MADERA_AIF_TX_ENABLES,
			    &aif_tx_state);
		FUNC8(madera->regmap, base + MADERA_AIF_RX_ENABLES,
			    &aif_rx_state);
		/* Disable AIF TX/RX before reconfiguring it */
		FUNC9(madera->regmap,
				   base + MADERA_AIF_TX_ENABLES, 0xff, 0x0);
		FUNC9(madera->regmap,
				   base + MADERA_AIF_RX_ENABLES, 0xff, 0x0);
	}

	ret = FUNC4(substream, params, dai);
	if (ret != 0)
		goto restore_aif;

	if (reconfig) {
		FUNC9(madera->regmap,
				   base + MADERA_AIF_BCLK_CTRL,
				   MADERA_AIF1_BCLK_FREQ_MASK, bclk);
		FUNC9(madera->regmap,
				   base + MADERA_AIF_RX_BCLK_RATE,
				   MADERA_AIF1RX_BCPF_MASK, lrclk);
		FUNC9(madera->regmap,
				   base + MADERA_AIF_FRAME_CTRL_1,
				   MADERA_AIF1TX_WL_MASK |
				   MADERA_AIF1TX_SLOT_LEN_MASK, frame);
		FUNC9(madera->regmap,
				   base + MADERA_AIF_FRAME_CTRL_2,
				   MADERA_AIF1RX_WL_MASK |
				   MADERA_AIF1RX_SLOT_LEN_MASK, frame);
	}

restore_aif:
	if (reconfig) {
		/* Restore AIF TX/RX state */
		FUNC9(madera->regmap,
				   base + MADERA_AIF_TX_ENABLES,
				   0xff, aif_tx_state);
		FUNC9(madera->regmap,
				   base + MADERA_AIF_RX_ENABLES,
				   0xff, aif_rx_state);
	}

	return ret;
}
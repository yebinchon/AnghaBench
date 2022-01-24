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
typedef  int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct classh_cfg {int classh_wk_fet_disable; } ;
struct TYPE_2__ {scalar_t__ stereo; struct classh_cfg classh_algo; } ;
struct cs35l35_private {int sclk; int /*<<< orphan*/  regmap; scalar_t__ slave_mode; scalar_t__ i2s_mode; TYPE_1__ pdata; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS35L35_ADVIN_DEPTH_MASK ; 
 int CS35L35_ADVIN_DEPTH_SHIFT ; 
 int /*<<< orphan*/  CS35L35_AUDIN_DEPTH_CTL ; 
 int /*<<< orphan*/  CS35L35_AUDIN_DEPTH_MASK ; 
 int CS35L35_AUDIN_DEPTH_SHIFT ; 
 int /*<<< orphan*/  CS35L35_CH_WKFET_DEL_MASK ; 
 int CS35L35_CH_WKFET_DEL_SHIFT ; 
 int /*<<< orphan*/  CS35L35_CLASS_H_FET_DRIVE_CTL ; 
 int /*<<< orphan*/  CS35L35_CLK_CTL2 ; 
 int /*<<< orphan*/  CS35L35_CLK_CTL2_MASK ; 
 int /*<<< orphan*/  CS35L35_CLK_CTL3 ; 
 int CS35L35_SDIN_DEPTH_16 ; 
 int CS35L35_SDIN_DEPTH_24 ; 
 int CS35L35_SDIN_DEPTH_8 ; 
 int CS35L35_SP_RATE_MASK ; 
#define  CS35L35_SP_SCLKS_32FS 130 
#define  CS35L35_SP_SCLKS_48FS 129 
#define  CS35L35_SP_SCLKS_64FS 128 
 int /*<<< orphan*/  CS35L35_SP_SCLKS_MASK ; 
 int CS35L35_SP_SCLKS_SHIFT ; 
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cs35l35_private* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct cs35l35_private *cs35l35 = FUNC5(component);
	struct classh_cfg *classh = &cs35l35->pdata.classh_algo;
	int srate = FUNC2(params);
	int ret = 0;
	u8 sp_sclks;
	int audin_format;
	int errata_chk;

	int clk_ctl = FUNC0(cs35l35->sysclk, srate);

	if (clk_ctl < 0) {
		FUNC1(component->dev, "Invalid CLK:Rate %d:%d\n",
			cs35l35->sysclk, srate);
		return -EINVAL;
	}

	ret = FUNC4(cs35l35->regmap, CS35L35_CLK_CTL2,
			  CS35L35_CLK_CTL2_MASK, clk_ctl);
	if (ret != 0) {
		FUNC1(component->dev, "Failed to set port config %d\n", ret);
		return ret;
	}

	/*
	 * Rev A0 Errata
	 * When configured for the weak-drive detection path (CH_WKFET_DIS = 0)
	 * the Class H algorithm does not enable weak-drive operation for
	 * nonzero values of CH_WKFET_DELAY if SP_RATE = 01 or 10
	 */
	errata_chk = clk_ctl & CS35L35_SP_RATE_MASK;

	if (classh->classh_wk_fet_disable == 0x00 &&
		(errata_chk == 0x01 || errata_chk == 0x03)) {
		ret = FUNC4(cs35l35->regmap,
					CS35L35_CLASS_H_FET_DRIVE_CTL,
					CS35L35_CH_WKFET_DEL_MASK,
					0 << CS35L35_CH_WKFET_DEL_SHIFT);
		if (ret != 0) {
			FUNC1(component->dev, "Failed to set fet config %d\n",
				ret);
			return ret;
		}
	}

	/*
	 * You can pull more Monitor data from the SDOUT pin than going to SDIN
	 * Just make sure your SCLK is fast enough to fill the frame
	 */
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		switch (FUNC3(params)) {
		case 8:
			audin_format = CS35L35_SDIN_DEPTH_8;
			break;
		case 16:
			audin_format = CS35L35_SDIN_DEPTH_16;
			break;
		case 24:
			audin_format = CS35L35_SDIN_DEPTH_24;
			break;
		default:
			FUNC1(component->dev, "Unsupported Width %d\n",
				FUNC3(params));
			return -EINVAL;
		}
		FUNC4(cs35l35->regmap,
				CS35L35_AUDIN_DEPTH_CTL,
				CS35L35_AUDIN_DEPTH_MASK,
				audin_format <<
				CS35L35_AUDIN_DEPTH_SHIFT);
		if (cs35l35->pdata.stereo) {
			FUNC4(cs35l35->regmap,
					CS35L35_AUDIN_DEPTH_CTL,
					CS35L35_ADVIN_DEPTH_MASK,
					audin_format <<
					CS35L35_ADVIN_DEPTH_SHIFT);
		}
	}

	if (cs35l35->i2s_mode) {
		/* We have to take the SCLK to derive num sclks
		 * to configure the CLOCK_CTL3 register correctly
		 */
		if ((cs35l35->sclk / srate) % 4) {
			FUNC1(component->dev, "Unsupported sclk/fs ratio %d:%d\n",
					cs35l35->sclk, srate);
			return -EINVAL;
		}
		sp_sclks = ((cs35l35->sclk / srate) / 4) - 1;

		/* Only certain ratios are supported in I2S Slave Mode */
		if (cs35l35->slave_mode) {
			switch (sp_sclks) {
			case CS35L35_SP_SCLKS_32FS:
			case CS35L35_SP_SCLKS_48FS:
			case CS35L35_SP_SCLKS_64FS:
				break;
			default:
				FUNC1(component->dev, "ratio not supported\n");
				return -EINVAL;
			}
		} else {
			/* Only certain ratios supported in I2S MASTER Mode */
			switch (sp_sclks) {
			case CS35L35_SP_SCLKS_32FS:
			case CS35L35_SP_SCLKS_64FS:
				break;
			default:
				FUNC1(component->dev, "ratio not supported\n");
				return -EINVAL;
			}
		}
		ret = FUNC4(cs35l35->regmap,
					CS35L35_CLK_CTL3,
					CS35L35_SP_SCLKS_MASK, sp_sclks <<
					CS35L35_SP_SCLKS_SHIFT);
		if (ret != 0) {
			FUNC1(component->dev, "Failed to set fsclk %d\n", ret);
			return ret;
		}
	}

	return ret;
}
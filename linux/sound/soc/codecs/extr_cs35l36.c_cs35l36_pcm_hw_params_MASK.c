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
struct snd_soc_dai {int /*<<< orphan*/  component; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs35l36_private {int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {unsigned int rate; unsigned int fs_cfg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CS35L36_ASP_FRAME_CTRL ; 
 int /*<<< orphan*/  CS35L36_ASP_RX_WIDTH_MASK ; 
 unsigned int CS35L36_ASP_RX_WIDTH_SHIFT ; 
 int /*<<< orphan*/  CS35L36_ASP_TX_WIDTH_MASK ; 
 unsigned int CS35L36_ASP_TX_WIDTH_SHIFT ; 
 unsigned int CS35L36_ASP_WIDTH_16 ; 
 unsigned int CS35L36_ASP_WIDTH_24 ; 
 unsigned int CS35L36_ASP_WIDTH_32 ; 
 int /*<<< orphan*/  CS35L36_GLOBAL_CLK_CTRL ; 
 int /*<<< orphan*/  CS35L36_GLOBAL_FS_MASK ; 
 unsigned int CS35L36_GLOBAL_FS_SHIFT ; 
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 TYPE_1__* cs35l36_fs_rates ; 
 unsigned int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct cs35l36_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct cs35l36_private *cs35l36 =
			FUNC4(dai->component);
	unsigned int asp_width, global_fs = FUNC1(params);
	int i;

	for (i = 0; i < FUNC0(cs35l36_fs_rates); i++) {
		if (global_fs == cs35l36_fs_rates[i].rate)
			FUNC3(cs35l36->regmap,
					   CS35L36_GLOBAL_CLK_CTRL,
					   CS35L36_GLOBAL_FS_MASK,
					   cs35l36_fs_rates[i].fs_cfg <<
					   CS35L36_GLOBAL_FS_SHIFT);
	}

	switch (FUNC2(params)) {
	case 16:
		asp_width = CS35L36_ASP_WIDTH_16;
		break;
	case 24:
		asp_width = CS35L36_ASP_WIDTH_24;
		break;
	case 32:
		asp_width = CS35L36_ASP_WIDTH_32;
		break;
	default:
		return -EINVAL;
	}

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		FUNC3(cs35l36->regmap, CS35L36_ASP_FRAME_CTRL,
				   CS35L36_ASP_RX_WIDTH_MASK,
				   asp_width << CS35L36_ASP_RX_WIDTH_SHIFT);
	} else {
		FUNC3(cs35l36->regmap, CS35L36_ASP_FRAME_CTRL,
				   CS35L36_ASP_TX_WIDTH_MASK,
				   asp_width << CS35L36_ASP_TX_WIDTH_SHIFT);
	}

	return 0;
}
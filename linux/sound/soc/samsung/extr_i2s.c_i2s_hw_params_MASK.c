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
typedef  int u32 ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct samsung_i2s_priv {int /*<<< orphan*/  rclk_srcrate; struct clk** clk_table; int /*<<< orphan*/  lock; scalar_t__ addr; } ;
struct TYPE_6__ {int addr_width; } ;
struct TYPE_5__ {int addr_width; } ;
struct i2s_dai {int /*<<< orphan*/  frmclk; TYPE_3__ dma_capture; TYPE_2__ dma_playback; TYPE_1__* pdev; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t CLK_I2S_RCLK_SRC ; 
 int EINVAL ; 
 scalar_t__ I2SMOD ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int MOD_BLCP_16BIT ; 
 int MOD_BLCP_24BIT ; 
 int MOD_BLCP_8BIT ; 
 int MOD_BLCP_MASK ; 
 int MOD_BLCS_16BIT ; 
 int MOD_BLCS_24BIT ; 
 int MOD_BLCS_8BIT ; 
 int MOD_BLCS_MASK ; 
 int MOD_BLC_16BIT ; 
 int MOD_BLC_24BIT ; 
 int MOD_BLC_8BIT ; 
 int MOD_BLC_MASK ; 
 int MOD_DC1_EN ; 
 int MOD_DC2_EN ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (struct i2s_dai*) ; 
 scalar_t__ FUNC5 (struct i2s_dai*) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_hw_params*) ; 
 int FUNC9 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 struct samsung_i2s_priv* FUNC12 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_soc_dai*,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 struct i2s_dai* FUNC16 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct samsung_i2s_priv *priv = FUNC12(dai);
	struct i2s_dai *i2s = FUNC16(dai);
	u32 mod, mask = 0, val = 0;
	struct clk *rclksrc;
	unsigned long flags;

	FUNC1(!FUNC10(dai->dev));

	if (!FUNC5(i2s))
		mask |= (MOD_DC2_EN | MOD_DC1_EN);

	switch (FUNC6(params)) {
	case 6:
		val |= MOD_DC2_EN;
		/* Fall through */
	case 4:
		val |= MOD_DC1_EN;
		break;
	case 2:
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			i2s->dma_playback.addr_width = 4;
		else
			i2s->dma_capture.addr_width = 4;
		break;
	case 1:
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			i2s->dma_playback.addr_width = 2;
		else
			i2s->dma_capture.addr_width = 2;

		break;
	default:
		FUNC3(&i2s->pdev->dev, "%d channels not supported\n",
				FUNC6(params));
		return -EINVAL;
	}

	if (FUNC5(i2s))
		mask |= MOD_BLCS_MASK;
	else
		mask |= MOD_BLCP_MASK;

	if (FUNC4(i2s))
		mask |= MOD_BLC_MASK;

	switch (FUNC9(params)) {
	case 8:
		if (FUNC5(i2s))
			val |= MOD_BLCS_8BIT;
		else
			val |= MOD_BLCP_8BIT;
		if (FUNC4(i2s))
			val |= MOD_BLC_8BIT;
		break;
	case 16:
		if (FUNC5(i2s))
			val |= MOD_BLCS_16BIT;
		else
			val |= MOD_BLCP_16BIT;
		if (FUNC4(i2s))
			val |= MOD_BLC_16BIT;
		break;
	case 24:
		if (FUNC5(i2s))
			val |= MOD_BLCS_24BIT;
		else
			val |= MOD_BLCP_24BIT;
		if (FUNC4(i2s))
			val |= MOD_BLC_24BIT;
		break;
	default:
		FUNC3(&i2s->pdev->dev, "Format(%d) not supported\n",
				FUNC7(params));
		return -EINVAL;
	}

	FUNC14(&priv->lock, flags);
	mod = FUNC11(priv->addr + I2SMOD);
	mod = (mod & ~mask) | val;
	FUNC17(mod, priv->addr + I2SMOD);
	FUNC15(&priv->lock, flags);

	FUNC13(dai, &i2s->dma_playback, &i2s->dma_capture);

	i2s->frmclk = FUNC8(params);

	rclksrc = priv->clk_table[CLK_I2S_RCLK_SRC];
	if (rclksrc && !FUNC0(rclksrc))
		priv->rclk_srcrate = FUNC2(rclksrc);

	return 0;
}
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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct samsung_i2s_priv {int quirks; int /*<<< orphan*/  lock; scalar_t__ addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct i2s_dai {scalar_t__ bfs; scalar_t__ rfs; TYPE_1__ idma_playback; int /*<<< orphan*/  dma_capture; int /*<<< orphan*/  dma_playback; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_RSTCLR ; 
 int /*<<< orphan*/  FIC_RXFLUSH ; 
 int /*<<< orphan*/  FIC_TXFLUSH ; 
 scalar_t__ I2SCON ; 
 int QUIRK_NEED_RSTCLR ; 
 int QUIRK_SUPPORTS_IDMA ; 
 int /*<<< orphan*/  SAMSUNG_I2S_CDCLK ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 struct i2s_dai* FUNC0 (struct i2s_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2s_dai*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2s_dai*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2s_dai*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2s_dai*) ; 
 scalar_t__ FUNC7 (struct i2s_dai*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct samsung_i2s_priv* FUNC10 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 struct i2s_dai* FUNC14 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct snd_soc_dai *dai)
{
	struct samsung_i2s_priv *priv = FUNC10(dai);
	struct i2s_dai *i2s = FUNC14(dai);
	struct i2s_dai *other = FUNC0(i2s);
	unsigned long flags;

	FUNC8(dai->dev);

	if (FUNC7(i2s)) {
		/* If this is probe on the secondary DAI */
		FUNC11(dai, &i2s->dma_playback, NULL);
	} else {
		FUNC11(dai, &i2s->dma_playback,
					  &i2s->dma_capture);

		if (priv->quirks & QUIRK_NEED_RSTCLR)
			FUNC15(CON_RSTCLR, priv->addr + I2SCON);

		if (priv->quirks & QUIRK_SUPPORTS_IDMA)
			FUNC5(priv->addr,
					   other->idma_playback.addr);
	}

	/* Reset any constraint on RFS and BFS */
	i2s->rfs = 0;
	i2s->bfs = 0;

	FUNC12(&priv->lock, flags);
	FUNC4(i2s, 0);
	FUNC2(i2s, 0);
	FUNC1(i2s, FIC_TXFLUSH);
	FUNC1(other, FIC_TXFLUSH);
	FUNC1(i2s, FIC_RXFLUSH);
	FUNC13(&priv->lock, flags);

	/* Gate CDCLK by default */
	if (!FUNC6(other))
		FUNC3(dai, SAMSUNG_I2S_CDCLK,
				0, SND_SOC_CLOCK_IN);
	FUNC9(dai->dev);

	return 0;
}
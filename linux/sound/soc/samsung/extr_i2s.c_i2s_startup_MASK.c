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
struct snd_pcm_substream {int dummy; } ;
struct samsung_i2s_priv {int quirks; int /*<<< orphan*/  pcm_lock; } ;
struct i2s_dai {TYPE_1__* priv; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_RSTCLR ; 
 int /*<<< orphan*/  DAI_MANAGER ; 
 int /*<<< orphan*/  DAI_OPENED ; 
 scalar_t__ I2SCON ; 
 int QUIRK_NEED_RSTCLR ; 
 int /*<<< orphan*/  FUNC0 (struct i2s_dai*) ; 
 struct i2s_dai* FUNC1 (struct i2s_dai*) ; 
 scalar_t__ FUNC2 (struct i2s_dai*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct samsung_i2s_priv* FUNC4 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct i2s_dai* FUNC7 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
	  struct snd_soc_dai *dai)
{
	struct samsung_i2s_priv *priv = FUNC4(dai);
	struct i2s_dai *i2s = FUNC7(dai);
	struct i2s_dai *other = FUNC1(i2s);
	unsigned long flags;

	FUNC3(dai->dev);

	FUNC5(&priv->pcm_lock, flags);

	i2s->mode |= DAI_OPENED;

	if (FUNC2(other))
		i2s->mode &= ~DAI_MANAGER;
	else
		i2s->mode |= DAI_MANAGER;

	if (!FUNC0(i2s) && (priv->quirks & QUIRK_NEED_RSTCLR))
		FUNC8(CON_RSTCLR, i2s->priv->addr + I2SCON);

	FUNC6(&priv->pcm_lock, flags);

	return 0;
}
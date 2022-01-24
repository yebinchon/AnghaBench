#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct samsung_i2s_priv {int quirks; int /*<<< orphan*/  lock; scalar_t__ addr; } ;
struct i2s_dai {int dummy; } ;

/* Variables and functions */
 scalar_t__ I2SCON ; 
 int QUIRK_NEED_RSTCLR ; 
 int /*<<< orphan*/  FUNC0 (struct i2s_dai*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct samsung_i2s_priv* FUNC3 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct i2s_dai* FUNC6 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dai *dai)
{
	struct samsung_i2s_priv *priv = FUNC3(dai);
	struct i2s_dai *i2s = FUNC6(dai);
	unsigned long flags;

	FUNC1(dai->dev);

	if (!FUNC0(i2s)) {
		if (priv->quirks & QUIRK_NEED_RSTCLR) {
			FUNC4(&priv->lock, flags);
			FUNC7(0, priv->addr + I2SCON);
			FUNC5(&priv->lock, flags);
		}
	}

	FUNC2(dai->dev);

	return 0;
}
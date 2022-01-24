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
struct wm8974_priv {int mclk; int fs; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8974_MCLKDIV ; 
 struct wm8974_priv* FUNC0 (struct snd_soc_component*) ; 
 unsigned int FUNC1 (int,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm8974_priv *priv = FUNC0(component);
	unsigned int fs256;
	unsigned int fpll = 0;
	unsigned int f;
	int mclkdiv;

	if (!priv->mclk || !priv->fs)
		return 0;

	fs256 = 256 * priv->fs;

	f = FUNC1(priv->mclk, fs256, &mclkdiv);

	if (f != priv->mclk) {
		/* The PLL performs best around 90MHz */
		fpll = FUNC1(22500000, fs256, &mclkdiv);
	}

	FUNC3(dai, 0, 0, priv->mclk, fpll);
	FUNC2(dai, WM8974_MCLKDIV, mclkdiv);

	return 0;
}
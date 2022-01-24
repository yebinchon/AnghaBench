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
struct axg_spdifin {int /*<<< orphan*/  pclk; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_dai*,struct axg_spdifin*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct axg_spdifin* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *dai)
{
	struct axg_spdifin *priv = FUNC4(dai);
	int ret;

	ret = FUNC2(priv->pclk);
	if (ret) {
		FUNC3(dai->dev, "failed to enable pclk\n");
		return ret;
	}

	ret = FUNC0(dai, priv);
	if (ret) {
		FUNC3(dai->dev, "mode configuration failed\n");
		FUNC1(priv->pclk);
		return ret;
	}

	return 0;
}
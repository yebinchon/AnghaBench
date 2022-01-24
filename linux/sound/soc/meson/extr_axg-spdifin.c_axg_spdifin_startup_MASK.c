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
struct snd_pcm_substream {int dummy; } ;
struct axg_spdifin {int /*<<< orphan*/  map; int /*<<< orphan*/  refclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPDIFIN_CTRL0 ; 
 int /*<<< orphan*/  SPDIFIN_CTRL0_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct axg_spdifin* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *dai)
{
	struct axg_spdifin *priv = FUNC3(dai);
	int ret;

	ret = FUNC0(priv->refclk);
	if (ret) {
		FUNC1(dai->dev,
			"failed to enable spdifin reference clock\n");
		return ret;
	}

	FUNC2(priv->map, SPDIFIN_CTRL0, SPDIFIN_CTRL0_EN,
			   SPDIFIN_CTRL0_EN);

	return 0;
}
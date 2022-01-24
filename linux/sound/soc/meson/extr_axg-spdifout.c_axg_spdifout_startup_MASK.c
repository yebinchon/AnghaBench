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
struct axg_spdifout {int /*<<< orphan*/  map; int /*<<< orphan*/  pclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPDIFOUT_CTRL0 ; 
 int SPDIFOUT_CTRL0_CHSTS_SEL ; 
 int SPDIFOUT_CTRL0_DATA_SEL ; 
 int SPDIFOUT_CTRL0_MSB_FIRST ; 
 int SPDIFOUT_CTRL0_USEL ; 
 int SPDIFOUT_CTRL0_USET ; 
 int SPDIFOUT_CTRL0_VSEL ; 
 int /*<<< orphan*/  SPDIFOUT_SWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct axg_spdifout* FUNC5 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct axg_spdifout *priv = FUNC5(dai);
	int ret;

	/* Clock the spdif output block */
	ret = FUNC1(priv->pclk);
	if (ret) {
		FUNC2(dai->dev, "failed to enable pclk\n");
		return ret;
	}

	/* Make sure the block is initially stopped */
	FUNC0(priv->map);

	/* Insert data from bit 27 lsb first */
	FUNC3(priv->map, SPDIFOUT_CTRL0,
			   SPDIFOUT_CTRL0_MSB_FIRST | SPDIFOUT_CTRL0_DATA_SEL,
			   0);

	/* Manual control of V, C and U, U = 0 */
	FUNC3(priv->map, SPDIFOUT_CTRL0,
			   SPDIFOUT_CTRL0_CHSTS_SEL | SPDIFOUT_CTRL0_VSEL |
			   SPDIFOUT_CTRL0_USEL | SPDIFOUT_CTRL0_USET,
			   0);

	/* Static SWAP configuration ATM */
	FUNC4(priv->map, SPDIFOUT_SWAP, 0x10);

	return 0;
}
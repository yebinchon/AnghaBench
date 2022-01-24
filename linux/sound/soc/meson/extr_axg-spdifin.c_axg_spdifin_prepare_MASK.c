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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_spdifin {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPDIFIN_CTRL0 ; 
 int SPDIFIN_CTRL0_RST_IN ; 
 int SPDIFIN_CTRL0_RST_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct axg_spdifin* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *dai)
{
	struct axg_spdifin *priv = FUNC1(dai);

	/* Apply both reset */
	FUNC0(priv->map, SPDIFIN_CTRL0,
			   SPDIFIN_CTRL0_RST_OUT |
			   SPDIFIN_CTRL0_RST_IN,
			   0);

	/* Clear out reset before in reset */
	FUNC0(priv->map, SPDIFIN_CTRL0,
			   SPDIFIN_CTRL0_RST_OUT, SPDIFIN_CTRL0_RST_OUT);
	FUNC0(priv->map, SPDIFIN_CTRL0,
			   SPDIFIN_CTRL0_RST_IN,  SPDIFIN_CTRL0_RST_IN);

	return 0;
}
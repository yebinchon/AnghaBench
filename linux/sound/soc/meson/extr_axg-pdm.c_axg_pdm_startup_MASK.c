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
struct axg_pdm {int /*<<< orphan*/  map; int /*<<< orphan*/  dclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct axg_pdm* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			   struct snd_soc_dai *dai)
{
	struct axg_pdm *priv = FUNC3(dai);
	int ret;

	ret = FUNC1(priv->dclk);
	if (ret) {
		FUNC2(dai->dev, "enabling dclk failed\n");
		return ret;
	}

	/* Enable the filters */
	FUNC0(priv->map, true);

	return ret;
}
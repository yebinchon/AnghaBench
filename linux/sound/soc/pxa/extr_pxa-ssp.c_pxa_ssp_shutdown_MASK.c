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
struct ssp_priv {scalar_t__ extclk; struct ssp_device* ssp; } ;
struct ssp_device {scalar_t__ clk; } ;
struct snd_soc_dai {int /*<<< orphan*/  active; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssp_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dai*,struct snd_pcm_substream*) ; 
 struct ssp_priv* FUNC4 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dai*,struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct snd_pcm_substream *substream,
			     struct snd_soc_dai *cpu_dai)
{
	struct ssp_priv *priv = FUNC4(cpu_dai);
	struct ssp_device *ssp = priv->ssp;

	if (!cpu_dai->active) {
		FUNC2(ssp);
		FUNC0(ssp->clk);
	}

	if (priv->extclk)
		FUNC0(priv->extclk);

	FUNC1(FUNC3(cpu_dai, substream));
	FUNC5(cpu_dai, substream, NULL);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs42l73_private {int mclk; TYPE_1__* config; } ;
struct TYPE_4__ {int mmcc; } ;
struct TYPE_3__ {int mmcc; int spc; int srate; } ;

/* Variables and functions */
 int CS42L73_MCK_SCLK_64FS ; 
 int CS42L73_MCK_SCLK_MCLK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CS42L73_MS_MASTER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int FUNC2 (int,int) ; 
 TYPE_2__* cs42l73_mclk_coeffs ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 struct cs42l73_private* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct cs42l73_private *priv = FUNC6(component);
	int id = dai->id;
	int mclk_coeff;
	int srate = FUNC5(params);

	if (priv->config[id].mmcc & CS42L73_MS_MASTER) {
		/* CS42L73 Master */
		/* MCLK -> srate */
		mclk_coeff =
		    FUNC2(priv->mclk, srate);

		if (mclk_coeff < 0)
			return -EINVAL;

		FUNC4(component->dev,
			 "DAI[%d]: MCLK %u, srate %u, MMCC[5:0] = %x\n",
			 id, priv->mclk, srate,
			 cs42l73_mclk_coeffs[mclk_coeff].mmcc);

		priv->config[id].mmcc &= 0xC0;
		priv->config[id].mmcc |= cs42l73_mclk_coeffs[mclk_coeff].mmcc;
		priv->config[id].spc &= 0xFC;
		/* Use SCLK=64*Fs if internal MCLK >= 6.4MHz */
		if (priv->mclk >= 6400000)
			priv->config[id].spc |= CS42L73_MCK_SCLK_64FS;
		else
			priv->config[id].spc |= CS42L73_MCK_SCLK_MCLK;
	} else {
		/* CS42L73 Slave */
		priv->config[id].spc &= 0xFC;
		priv->config[id].spc |= CS42L73_MCK_SCLK_64FS;
	}
	/* Update ASRCs */
	priv->config[id].srate = srate;

	FUNC7(component, FUNC1(id), priv->config[id].spc);
	FUNC7(component, FUNC0(id), priv->config[id].mmcc);

	FUNC3(component, id, srate);

	return 0;
}
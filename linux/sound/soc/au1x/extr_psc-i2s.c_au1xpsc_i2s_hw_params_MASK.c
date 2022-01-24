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
struct snd_pcm_hw_params {scalar_t__ msbits; } ;
struct au1xpsc_audio_data {scalar_t__ rate; int cfg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xpsc_audio_data*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 unsigned long PSC_I2SSTAT_RB ; 
 unsigned long PSC_I2SSTAT_TB ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct snd_pcm_hw_params*) ; 
 struct au1xpsc_audio_data* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct au1xpsc_audio_data *pscdata = FUNC6(dai);

	int cfgbits;
	unsigned long stat;

	/* check if the PSC is already streaming data */
	stat = FUNC4(FUNC1(pscdata));
	if (stat & (PSC_I2SSTAT_TB | PSC_I2SSTAT_RB)) {
		/* reject parameters not currently set up in hardware */
		cfgbits = FUNC4(FUNC0(pscdata));
		if ((FUNC2(cfgbits) != params->msbits) ||
		    (FUNC5(params) != pscdata->rate))
			return -EINVAL;
	} else {
		/* set sample bitdepth */
		pscdata->cfg &= ~(0x1f << 4);
		pscdata->cfg |= FUNC3(params->msbits);
		/* remember current rate for other stream */
		pscdata->rate = FUNC5(params);
	}
	return 0;
}
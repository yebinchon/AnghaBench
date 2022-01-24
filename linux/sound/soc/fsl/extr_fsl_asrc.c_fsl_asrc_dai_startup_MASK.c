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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct fsl_asrc {int channel_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  fsl_asrc_rate_constraints ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct fsl_asrc* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct fsl_asrc *asrc_priv = FUNC2(dai);

	/* Odd channel number is not valid for older ASRC (channel_bits==3) */
	if (asrc_priv->channel_bits == 3)
		FUNC1(substream->runtime, 0,
					   SNDRV_PCM_HW_PARAM_CHANNELS, 2);


	return FUNC0(substream->runtime, 0,
			SNDRV_PCM_HW_PARAM_RATE, &fsl_asrc_rate_constraints);
}
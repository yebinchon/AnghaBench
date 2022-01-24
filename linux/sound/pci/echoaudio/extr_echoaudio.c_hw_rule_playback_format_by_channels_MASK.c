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
typedef  int u64 ;
typedef  int u32 ;
struct snd_pcm_hw_rule {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int* bits; } ;
struct snd_interval {int min; int max; } ;

/* Variables and functions */
 int SNDRV_PCM_FMTBIT_S16_LE ; 
 int SNDRV_PCM_FMTBIT_S24_3LE ; 
 int SNDRV_PCM_FMTBIT_S32_BE ; 
 int SNDRV_PCM_FMTBIT_S32_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_mask* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mask*) ; 
 int FUNC3 (struct snd_mask*,struct snd_mask*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_hw_params *params,
					       struct snd_pcm_hw_rule *rule)
{
	struct snd_interval *c = FUNC0(params,
						   SNDRV_PCM_HW_PARAM_CHANNELS);
	struct snd_mask *f = FUNC1(params, SNDRV_PCM_HW_PARAM_FORMAT);
	struct snd_mask fmt;
	u64 fmask;
	FUNC2(&fmt);

	fmask = fmt.bits[0] + ((u64)fmt.bits[1] << 32);

	/* >2 channels must be S16_LE, S24_3LE or S32_LE */
	if (c->min > 2) {
		fmask &= SNDRV_PCM_FMTBIT_S16_LE |
			 SNDRV_PCM_FMTBIT_S24_3LE |
			 SNDRV_PCM_FMTBIT_S32_LE;
	/* 1 channel must be S32_BE or S32_LE */
	} else if (c->max == 1)
		fmask &= SNDRV_PCM_FMTBIT_S32_LE | SNDRV_PCM_FMTBIT_S32_BE;
#ifndef ECHOCARD_HAS_STEREO_BIG_ENDIAN32
	/* 2 channels cannot be S32_BE */
	else if (c->min == 2 && c->max == 2)
		fmask &= ~SNDRV_PCM_FMTBIT_S32_BE;
#endif
	else
		return 0;

	fmt.bits[0] &= (u32)fmask;
	fmt.bits[1] &= (u32)(fmask >> 32);
	return FUNC3(f, &fmt);
}
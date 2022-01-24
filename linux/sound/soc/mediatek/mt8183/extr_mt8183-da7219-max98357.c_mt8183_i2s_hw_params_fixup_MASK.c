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
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_FORMAT_LAST ; 
 int /*<<< orphan*/  SNDRV_PCM_FORMAT_S32_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_pcm_runtime *rtd,
				      struct snd_pcm_hw_params *params)
{
	/* fix BE i2s format to 32bit, clean param mask first */
	FUNC2(FUNC0(params, SNDRV_PCM_HW_PARAM_FORMAT),
			     0, SNDRV_PCM_FORMAT_LAST);

	FUNC1(params, SNDRV_PCM_FORMAT_S32_LE);

	return 0;
}
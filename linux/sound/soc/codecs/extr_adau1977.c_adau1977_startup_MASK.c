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
struct snd_soc_dai {int /*<<< orphan*/  component; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct adau1977 {int slot_width; int /*<<< orphan*/  max_master_fs; scalar_t__ master; int /*<<< orphan*/  constraints; scalar_t__ right_j; } ;

/* Variables and functions */
 int SNDRV_PCM_FMTBIT_S16_BE ; 
 int SNDRV_PCM_FMTBIT_S16_LE ; 
 int SNDRV_PCM_FMTBIT_S24_BE ; 
 int SNDRV_PCM_FMTBIT_S24_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct adau1977* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
	struct snd_soc_dai *dai)
{
	struct adau1977 *adau1977 = FUNC3(dai->component);
	u64 formats = 0;

	if (adau1977->slot_width == 16)
		formats = SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S16_BE;
	else if (adau1977->right_j || adau1977->slot_width == 24)
		formats = SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S16_BE |
			SNDRV_PCM_FMTBIT_S24_LE | SNDRV_PCM_FMTBIT_S24_BE;

	FUNC0(substream->runtime, 0,
		SNDRV_PCM_HW_PARAM_RATE, &adau1977->constraints);

	if (adau1977->master)
		FUNC2(substream->runtime,
			SNDRV_PCM_HW_PARAM_RATE, 8000, adau1977->max_master_fs);

	if (formats != 0)
		FUNC1(substream->runtime,
			SNDRV_PCM_HW_PARAM_FORMAT, formats);

	return 0;
}
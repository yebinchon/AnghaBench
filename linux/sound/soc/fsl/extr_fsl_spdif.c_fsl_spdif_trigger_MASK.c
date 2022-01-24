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
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct regmap {int dummy; } ;
struct fsl_spdif_priv {struct regmap* regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  REG_SPDIF_SCR ; 
 int /*<<< orphan*/  REG_SPDIF_SIE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsl_spdif_priv* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				int cmd, struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct fsl_spdif_priv *spdif_priv = FUNC3(rtd->cpu_dai);
	struct regmap *regmap = spdif_priv->regmap;
	bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	u32 intr = FUNC1(tx);
	u32 dmaen = FUNC0(tx);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC2(regmap, REG_SPDIF_SIE, intr, intr);
		FUNC2(regmap, REG_SPDIF_SCR, dmaen, dmaen);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC2(regmap, REG_SPDIF_SCR, dmaen, 0);
		FUNC2(regmap, REG_SPDIF_SIE, intr, 0);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}
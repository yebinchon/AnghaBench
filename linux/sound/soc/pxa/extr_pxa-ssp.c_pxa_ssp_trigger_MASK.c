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
struct ssp_priv {struct ssp_device* ssp; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  SSSR ; 
 int /*<<< orphan*/  FUNC0 (struct ssp_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssp_device*) ; 
 int FUNC3 (struct ssp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,struct ssp_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ssp_device*,int /*<<< orphan*/ ,int) ; 
 struct ssp_priv* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream, int cmd,
			   struct snd_soc_dai *cpu_dai)
{
	int ret = 0;
	struct ssp_priv *priv = FUNC6(cpu_dai);
	struct ssp_device *ssp = priv->ssp;
	int val;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_RESUME:
		FUNC2(ssp);
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC4(substream, ssp, 1);
		val = FUNC3(ssp, SSSR);
		FUNC5(ssp, SSSR, val);
		break;
	case SNDRV_PCM_TRIGGER_START:
		FUNC4(substream, ssp, 1);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC4(substream, ssp, 0);
		break;
	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC1(ssp);
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC4(substream, ssp, 0);
		break;

	default:
		ret = -EINVAL;
	}

	FUNC0(ssp);

	return ret;
}
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
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {struct fsl_asrc* asrc_priv; } ;
struct fsl_asrc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 struct fsl_asrc* FUNC0 (struct device*) ; 
 struct fsl_asrc_pair* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_imx_hardware ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_component *component = FUNC3(rtd, DRV_NAME);
	struct device *dev = component->dev;
	struct fsl_asrc *asrc_priv = FUNC0(dev);
	struct fsl_asrc_pair *pair;

	pair = FUNC1(sizeof(struct fsl_asrc_pair), GFP_KERNEL);
	if (!pair)
		return -ENOMEM;

	pair->asrc_priv = asrc_priv;

	runtime->private_data = pair;

	FUNC2(substream->runtime,
				      SNDRV_PCM_HW_PARAM_PERIODS);
	FUNC4(substream, &snd_imx_hardware);

	return 0;
}
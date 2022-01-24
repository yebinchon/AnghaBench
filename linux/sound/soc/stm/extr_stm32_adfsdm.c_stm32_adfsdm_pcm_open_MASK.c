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
struct stm32_adfsdm_priv {struct snd_pcm_substream* substream; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;

/* Variables and functions */
 struct stm32_adfsdm_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_adfsdm_pcm_hw ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct stm32_adfsdm_priv *priv = FUNC0(rtd->cpu_dai);
	int ret;

	ret =  FUNC1(substream, &stm32_adfsdm_pcm_hw);
	if (!ret)
		priv->substream = substream;

	return ret;
}
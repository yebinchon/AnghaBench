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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  num; int /*<<< orphan*/  card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct simple_dai_props {int /*<<< orphan*/  cpu_dai; int /*<<< orphan*/  codec_dai; } ;
struct asoc_simple_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct simple_dai_props* FUNC2 (struct asoc_simple_priv*,int /*<<< orphan*/ ) ; 
 struct asoc_simple_priv* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct asoc_simple_priv *priv = FUNC3(rtd->card);
	struct simple_dai_props *dai_props = FUNC2(priv, rtd->num);
	int ret;

	ret = FUNC1(dai_props->cpu_dai);
	if (ret)
		return ret;

	ret = FUNC1(dai_props->codec_dai);
	if (ret)
		FUNC0(dai_props->cpu_dai);

	return ret;
}
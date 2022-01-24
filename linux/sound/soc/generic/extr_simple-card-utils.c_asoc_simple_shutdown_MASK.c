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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  num; int /*<<< orphan*/  card; struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct simple_dai_props {int /*<<< orphan*/  codec_dai; int /*<<< orphan*/  cpu_dai; scalar_t__ mclk_fs; } ;
struct asoc_simple_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct simple_dai_props* FUNC1 (struct asoc_simple_priv*,int /*<<< orphan*/ ) ; 
 struct asoc_simple_priv* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	struct asoc_simple_priv *priv = FUNC2(rtd->card);
	struct simple_dai_props *dai_props =
		FUNC1(priv, rtd->num);

	if (dai_props->mclk_fs) {
		FUNC3(codec_dai, 0, 0, SND_SOC_CLOCK_IN);
		FUNC3(cpu_dai, 0, 0, SND_SOC_CLOCK_OUT);
	}

	FUNC0(dai_props->cpu_dai);

	FUNC0(dai_props->codec_dai);
}
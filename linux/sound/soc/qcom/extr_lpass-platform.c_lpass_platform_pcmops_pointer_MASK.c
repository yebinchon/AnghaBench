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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {struct lpass_pcm_data* private_data; } ;
struct lpass_variant {int dummy; } ;
struct lpass_pcm_data {int dma_ch; } ;
struct lpass_data {int /*<<< orphan*/  lpaif_map; struct lpass_variant* variant; } ;
typedef  int snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct lpass_variant*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lpass_variant*,int,int) ; 
 int FUNC2 (struct snd_pcm_runtime*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct lpass_data* FUNC5 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC6 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC7(
		struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
	struct snd_soc_component *component = FUNC6(soc_runtime, DRV_NAME);
	struct lpass_data *drvdata = FUNC5(component);
	struct snd_pcm_runtime *rt = substream->runtime;
	struct lpass_pcm_data *pcm_data = rt->private_data;
	struct lpass_variant *v = drvdata->variant;
	unsigned int base_addr, curr_addr;
	int ret, ch, dir = substream->stream;

	ch = pcm_data->dma_ch;

	ret = FUNC4(drvdata->lpaif_map,
			FUNC0(v, ch, dir), &base_addr);
	if (ret) {
		FUNC3(soc_runtime->dev,
			"error reading from rdmabase reg: %d\n", ret);
		return ret;
	}

	ret = FUNC4(drvdata->lpaif_map,
			FUNC1(v, ch, dir), &curr_addr);
	if (ret) {
		FUNC3(soc_runtime->dev,
			"error reading from rdmacurr reg: %d\n", ret);
		return ret;
	}

	return FUNC2(substream->runtime, curr_addr - base_addr);
}
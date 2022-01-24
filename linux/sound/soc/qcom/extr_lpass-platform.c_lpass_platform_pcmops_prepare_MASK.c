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
struct snd_pcm_runtime {int dma_addr; struct lpass_pcm_data* private_data; } ;
struct lpass_variant {int dummy; } ;
struct lpass_pcm_data {int dma_ch; } ;
struct lpass_data {int /*<<< orphan*/  lpaif_map; struct lpass_variant* variant; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct lpass_variant*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lpass_variant*,int,int) ; 
 int /*<<< orphan*/  LPAIF_DMACTL_ENABLE_MASK ; 
 int /*<<< orphan*/  LPAIF_DMACTL_ENABLE_ON ; 
 int /*<<< orphan*/  FUNC2 (struct lpass_variant*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lpass_variant*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct snd_pcm_substream*) ; 
 int FUNC8 (struct snd_pcm_substream*) ; 
 struct lpass_data* FUNC9 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC10 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
	struct snd_soc_component *component = FUNC10(soc_runtime, DRV_NAME);
	struct lpass_data *drvdata = FUNC9(component);
	struct snd_pcm_runtime *rt = substream->runtime;
	struct lpass_pcm_data *pcm_data = rt->private_data;
	struct lpass_variant *v = drvdata->variant;
	int ret, ch, dir = substream->stream;

	ch = pcm_data->dma_ch;

	ret = FUNC6(drvdata->lpaif_map,
			FUNC0(v, ch, dir),
			runtime->dma_addr);
	if (ret) {
		FUNC4(soc_runtime->dev, "error writing to rdmabase reg: %d\n",
			ret);
		return ret;
	}

	ret = FUNC6(drvdata->lpaif_map,
			FUNC1(v, ch, dir),
			(FUNC7(substream) >> 2) - 1);
	if (ret) {
		FUNC4(soc_runtime->dev, "error writing to rdmabuff reg: %d\n",
			ret);
		return ret;
	}

	ret = FUNC6(drvdata->lpaif_map,
			FUNC3(v, ch, dir),
			(FUNC8(substream) >> 2) - 1);
	if (ret) {
		FUNC4(soc_runtime->dev, "error writing to rdmaper reg: %d\n",
			ret);
		return ret;
	}

	ret = FUNC5(drvdata->lpaif_map,
			FUNC2(v, ch, dir),
			LPAIF_DMACTL_ENABLE_MASK, LPAIF_DMACTL_ENABLE_ON);
	if (ret) {
		FUNC4(soc_runtime->dev, "error writing to rdmactl reg: %d\n",
			ret);
		return ret;
	}

	return 0;
}
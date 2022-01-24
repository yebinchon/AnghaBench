#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sst_hsw {int dummy; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; TYPE_1__* cpu_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct hsw_priv_data {int /*<<< orphan*/  dev; struct hsw_pcm_data** pcm; struct sst_hsw* hsw; } ;
struct hsw_pcm_data {int allocated; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * stream; } ;
struct TYPE_4__ {int dai_id; } ;
struct TYPE_3__ {size_t id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* mod_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct hsw_priv_data* FUNC5 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC6 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sst_hsw*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sst_hsw*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component = FUNC6(rtd, DRV_NAME);
	struct hsw_priv_data *pdata = FUNC5(component);
	struct hsw_pcm_data *pcm_data;
	struct sst_hsw *hsw = pdata->hsw;
	int ret, dai;

	dai = mod_map[rtd->cpu_dai->id].dai_id;
	pcm_data = &pdata->pcm[dai][substream->stream];

	FUNC1(&pcm_data->mutex);
	ret = FUNC8(hsw, pcm_data->stream);
	if (ret < 0) {
		FUNC0(rtd->dev, "error: reset stream failed %d\n", ret);
		goto out;
	}

	ret = FUNC7(hsw, pcm_data->stream);
	if (ret < 0) {
		FUNC0(rtd->dev, "error: free stream failed %d\n", ret);
		goto out;
	}
	pcm_data->allocated = false;
	pcm_data->stream = NULL;

out:
	FUNC3(pdata->dev);
	FUNC4(pdata->dev);
	FUNC2(&pcm_data->mutex);
	return ret;
}
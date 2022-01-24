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
struct sst_byt_priv_data {struct sst_byt* byt; struct sst_byt_pcm_data* pcm; } ;
struct sst_byt_pcm_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * stream; int /*<<< orphan*/  work; } ;
struct sst_byt {int dummy; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sst_byt_priv_data* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sst_byt*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component = FUNC5(rtd, DRV_NAME);
	struct sst_byt_priv_data *pdata = FUNC4(component);
	struct sst_byt_pcm_data *pcm_data = &pdata->pcm[substream->stream];
	struct sst_byt *byt = pdata->byt;
	int ret;

	FUNC1(rtd->dev, "PCM: close\n");

	FUNC0(&pcm_data->work);
	FUNC2(&pcm_data->mutex);
	ret = FUNC6(byt, pcm_data->stream);
	if (ret < 0) {
		FUNC1(rtd->dev, "Free stream fail\n");
		goto out;
	}
	pcm_data->stream = NULL;

out:
	FUNC3(&pcm_data->mutex);
	return ret;
}
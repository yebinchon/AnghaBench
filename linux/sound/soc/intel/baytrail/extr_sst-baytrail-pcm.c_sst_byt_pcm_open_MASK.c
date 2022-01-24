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
struct sst_byt_pcm_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * stream; struct snd_pcm_substream* substream; } ;
struct sst_byt {int dummy; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  byt_notify_pointer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sst_byt_priv_data* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sst_byt_pcm_hardware ; 
 int /*<<< orphan*/ * FUNC7 (struct sst_byt*,int,int /*<<< orphan*/ ,struct sst_byt_pcm_data*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component = FUNC5(rtd, DRV_NAME);
	struct sst_byt_priv_data *pdata = FUNC4(component);
	struct sst_byt_pcm_data *pcm_data = &pdata->pcm[substream->stream];
	struct sst_byt *byt = pdata->byt;

	FUNC0(rtd->dev, "PCM: open\n");

	FUNC2(&pcm_data->mutex);

	pcm_data->substream = substream;

	FUNC6(substream, &sst_byt_pcm_hardware);

	pcm_data->stream = FUNC7(byt, substream->stream + 1,
					      byt_notify_pointer, pcm_data);
	if (pcm_data->stream == NULL) {
		FUNC1(rtd->dev, "failed to create stream\n");
		FUNC3(&pcm_data->mutex);
		return -EINVAL;
	}

	FUNC3(&pcm_data->mutex);
	return 0;
}
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
struct sst_byt_pcm_data {int /*<<< orphan*/  hw_ptr; int /*<<< orphan*/  stream; } ;
struct sst_byt {int dummy; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct sst_byt_priv_data* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sst_byt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_byt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component = FUNC3(rtd, DRV_NAME);
	struct sst_byt_priv_data *pdata = FUNC2(component);
	struct sst_byt_pcm_data *pcm_data = &pdata->pcm[substream->stream];
	struct sst_byt *byt = pdata->byt;
	int ret;

	/* commit stream using existing stream params */
	ret = FUNC4(byt, pcm_data->stream);
	if (ret < 0) {
		FUNC1(rtd->dev, "PCM: failed stream commit %d\n", ret);
		return ret;
	}

	FUNC5(byt, pcm_data->stream, pcm_data->hw_ptr);

	FUNC0(rtd->dev, "stream context restored at offset %d\n",
		pcm_data->hw_ptr);

	return 0;
}
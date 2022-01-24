#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct sst_byt_priv_data {struct sst_byt* byt; struct sst_byt_pcm_data* pcm; } ;
struct sst_byt_pcm_data {int /*<<< orphan*/  stream; } ;
struct sst_byt {int dummy; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct snd_pcm_substream {size_t stream; TYPE_1__ dma_buffer; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct sst_byt_pcm_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct sst_byt_priv_data* FUNC8 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC9 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sst_byt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sst_byt*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sst_byt*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct sst_byt*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC14 (struct sst_byt*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct sst_byt*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC16(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component = FUNC9(rtd, DRV_NAME);
	struct sst_byt_priv_data *pdata = FUNC8(component);
	struct sst_byt_pcm_data *pcm_data = &pdata->pcm[substream->stream];
	struct sst_byt *byt = pdata->byt;
	u32 rate, bits;
	u8 channels;
	int ret, playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);

	FUNC0(rtd->dev, "PCM: hw_params, pcm_data %p\n", pcm_data);

	ret = FUNC15(byt, pcm_data->stream,
				  1, 1, !playback);
	if (ret < 0) {
		FUNC1(rtd->dev, "failed to set stream format %d\n", ret);
		return ret;
	}

	rate = FUNC5(params);
	ret = FUNC14(byt, pcm_data->stream, rate);
	if (ret < 0) {
		FUNC1(rtd->dev, "could not set rate %d\n", rate);
		return ret;
	}

	bits = FUNC6(FUNC4(params));
	ret = FUNC12(byt, pcm_data->stream, bits);
	if (ret < 0) {
		FUNC1(rtd->dev, "could not set formats %d\n",
			FUNC5(params));
		return ret;
	}

	channels = (u8)(FUNC3(params) & 0xF);
	ret = FUNC13(byt, pcm_data->stream, channels);
	if (ret < 0) {
		FUNC1(rtd->dev, "could not set channels %d\n",
			FUNC5(params));
		return ret;
	}

	FUNC7(substream, FUNC2(params));

	ret = FUNC10(byt, pcm_data->stream,
				    substream->dma_buffer.addr,
				    FUNC2(params));
	if (ret < 0) {
		FUNC1(rtd->dev, "PCM: failed to set DMA buffer %d\n", ret);
		return ret;
	}

	ret = FUNC11(byt, pcm_data->stream);
	if (ret < 0) {
		FUNC1(rtd->dev, "PCM: failed stream commit %d\n", ret);
		return ret;
	}

	return 0;
}
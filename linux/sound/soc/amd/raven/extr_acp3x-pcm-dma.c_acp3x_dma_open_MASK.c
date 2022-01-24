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
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct i2s_stream_instance* private_data; int /*<<< orphan*/  hw; } ;
struct i2s_stream_instance {scalar_t__ acp3x_base; } ;
struct i2s_dev_data {scalar_t__ acp3x_base; struct snd_pcm_substream* capture_stream; struct snd_pcm_substream* play_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  acp3x_pcm_hardware_capture ; 
 int /*<<< orphan*/  acp3x_pcm_hardware_playback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct i2s_dev_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2s_stream_instance*) ; 
 struct i2s_stream_instance* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ mmACP_EXTERNAL_INTR_ENB ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC6 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	int ret = 0;

	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_pcm_runtime *prtd = substream->private_data;
	struct snd_soc_component *component = FUNC6(prtd,
								    DRV_NAME);
	struct i2s_dev_data *adata = FUNC1(component->dev);

	struct i2s_stream_instance *i2s_data = FUNC3(sizeof(struct i2s_stream_instance),
						       GFP_KERNEL);
	if (!i2s_data)
		return -EINVAL;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		runtime->hw = acp3x_pcm_hardware_playback;
	else
		runtime->hw = acp3x_pcm_hardware_capture;

	ret = FUNC5(runtime,
					    SNDRV_PCM_HW_PARAM_PERIODS);
	if (ret < 0) {
		FUNC0(component->dev, "set integer constraint failed\n");
		FUNC2(i2s_data);
		return ret;
	}

	if (!adata->play_stream && !adata->capture_stream)
		FUNC4(1, adata->acp3x_base + mmACP_EXTERNAL_INTR_ENB);

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		adata->play_stream = substream;
	else
		adata->capture_stream = substream;

	i2s_data->acp3x_base = adata->acp3x_base;
	runtime->private_data = i2s_data;
	return 0;
}
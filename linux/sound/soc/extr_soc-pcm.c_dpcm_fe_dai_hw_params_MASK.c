#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_3__* card; TYPE_2__* dpcm; int /*<<< orphan*/  dev; TYPE_1__* dai_link; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; int /*<<< orphan*/  hw_params; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_CARD_CLASS_RUNTIME ; 
 int /*<<< orphan*/  SND_SOC_DPCM_STATE_HW_PARAMS ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_FE ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_pcm_runtime*,int) ; 
 int FUNC3 (struct snd_soc_pcm_runtime*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct snd_pcm_hw_params*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_pcm_hw_params*) ; 
 int FUNC11 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC12(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *fe = substream->private_data;
	int ret, stream = substream->stream;

	FUNC6(&fe->card->mutex, SND_SOC_CARD_CLASS_RUNTIME);
	FUNC4(fe, stream, SND_SOC_DPCM_UPDATE_FE);

	FUNC5(&fe->dpcm[substream->stream].hw_params, params,
			sizeof(struct snd_pcm_hw_params));
	ret = FUNC3(fe, substream->stream);
	if (ret < 0) {
		FUNC1(fe->dev,"ASoC: hw_params BE failed %d\n", ret);
		goto out;
	}

	FUNC0(fe->dev, "ASoC: hw_params FE %s rate %d chan %x fmt %d\n",
			fe->dai_link->name, FUNC10(params),
			FUNC8(params), FUNC9(params));

	/* call hw_params on the frontend */
	ret = FUNC11(substream, params);
	if (ret < 0) {
		FUNC1(fe->dev,"ASoC: hw_params FE failed %d\n", ret);
		FUNC2(fe, stream);
	 } else
		fe->dpcm[stream].state = SND_SOC_DPCM_STATE_HW_PARAMS;

out:
	FUNC4(fe, stream, SND_SOC_DPCM_UPDATE_NO);
	FUNC7(&fe->card->mutex);
	return ret;
}
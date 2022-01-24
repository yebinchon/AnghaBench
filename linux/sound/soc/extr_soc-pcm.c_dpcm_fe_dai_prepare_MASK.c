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
struct snd_soc_pcm_runtime {TYPE_3__* card; TYPE_2__* dpcm; TYPE_1__* dai_link; int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; int /*<<< orphan*/  be_clients; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SND_SOC_CARD_CLASS_RUNTIME ; 
 int /*<<< orphan*/  SND_SOC_DAPM_STREAM_START ; 
 int /*<<< orphan*/  SND_SOC_DPCM_STATE_PREPARE ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_FE ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *fe = substream->private_data;
	int stream = substream->stream, ret = 0;

	FUNC6(&fe->card->mutex, SND_SOC_CARD_CLASS_RUNTIME);

	FUNC0(fe->dev, "ASoC: prepare FE %s\n", fe->dai_link->name);

	FUNC4(fe, stream, SND_SOC_DPCM_UPDATE_FE);

	/* there is no point preparing this FE if there are no BEs */
	if (FUNC5(&fe->dpcm[stream].be_clients)) {
		FUNC1(fe->dev, "ASoC: no backend DAIs enabled for %s\n",
				fe->dai_link->name);
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC2(fe, substream->stream);
	if (ret < 0)
		goto out;

	/* call prepare on the frontend */
	ret = FUNC8(substream);
	if (ret < 0) {
		FUNC1(fe->dev,"ASoC: prepare FE %s failed\n",
			fe->dai_link->name);
		goto out;
	}

	/* run the stream event for each BE */
	FUNC3(fe, stream, SND_SOC_DAPM_STREAM_START);
	fe->dpcm[stream].state = SND_SOC_DPCM_STATE_PREPARE;

out:
	FUNC4(fe, stream, SND_SOC_DPCM_UPDATE_NO);
	FUNC7(&fe->card->mutex);

	return ret;
}
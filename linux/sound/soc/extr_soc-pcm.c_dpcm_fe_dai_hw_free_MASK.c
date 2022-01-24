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
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_CARD_CLASS_RUNTIME ; 
 int /*<<< orphan*/  SND_SOC_DPCM_STATE_HW_FREE ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_FE ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *fe = substream->private_data;
	int err, stream = substream->stream;

	FUNC4(&fe->card->mutex, SND_SOC_CARD_CLASS_RUNTIME);
	FUNC3(fe, stream, SND_SOC_DPCM_UPDATE_FE);

	FUNC0(fe->dev, "ASoC: hw_free FE %s\n", fe->dai_link->name);

	/* call hw_free on the frontend */
	err = FUNC6(substream);
	if (err < 0)
		FUNC1(fe->dev,"ASoC: hw_free FE %s failed\n",
			fe->dai_link->name);

	/* only hw_params backends that are either sinks or sources
	 * to this frontend DAI */
	err = FUNC2(fe, stream);

	fe->dpcm[stream].state = SND_SOC_DPCM_STATE_HW_FREE;
	FUNC3(fe, stream, SND_SOC_DPCM_UPDATE_NO);

	FUNC5(&fe->card->mutex);
	return 0;
}
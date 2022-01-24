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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; TYPE_2__* dpcm; TYPE_1__* dai_link; } ;
struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DPCM_STATE_OPEN ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_FE ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct snd_pcm_substream*,int) ; 
 int FUNC3 (struct snd_soc_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_runtime*) ; 
 int FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *fe_substream)
{
	struct snd_soc_pcm_runtime *fe = fe_substream->private_data;
	struct snd_pcm_runtime *runtime = fe_substream->runtime;
	int stream = fe_substream->stream, ret = 0;

	FUNC6(fe, stream, SND_SOC_DPCM_UPDATE_FE);

	ret = FUNC3(fe, fe_substream->stream);
	if (ret < 0) {
		FUNC1(fe->dev,"ASoC: failed to start some BEs %d\n", ret);
		goto be_err;
	}

	FUNC0(fe->dev, "ASoC: open FE %s\n", fe->dai_link->name);

	/* start the DAI frontend */
	ret = FUNC8(fe_substream);
	if (ret < 0) {
		FUNC1(fe->dev,"ASoC: failed to start FE %d\n", ret);
		goto unwind;
	}

	fe->dpcm[stream].state = SND_SOC_DPCM_STATE_OPEN;

	FUNC5(fe_substream);
	FUNC7(runtime);

	ret = FUNC2(fe_substream, stream);
	if (ret < 0) {
		FUNC1(fe->dev, "ASoC: failed to apply dpcm symmetry %d\n",
			ret);
		goto unwind;
	}

	FUNC6(fe, stream, SND_SOC_DPCM_UPDATE_NO);
	return 0;

unwind:
	FUNC4(fe, fe_substream->stream);
be_err:
	FUNC6(fe, stream, SND_SOC_DPCM_UPDATE_NO);
	return ret;
}
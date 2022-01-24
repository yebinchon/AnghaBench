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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; TYPE_1__* dai_link; } ;
struct snd_pcm_substream {int dummy; } ;
typedef  enum snd_soc_dpcm_trigger { ____Placeholder_snd_soc_dpcm_trigger } snd_soc_dpcm_trigger ;
struct TYPE_2__ {int* trigger; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_TRIGGER_STOP ; 
 int /*<<< orphan*/  SND_SOC_DAPM_STREAM_NOP ; 
 int SND_SOC_DPCM_TRIGGER_BESPOKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct snd_soc_pcm_runtime*,int) ; 
 int FUNC3 (struct snd_soc_pcm_runtime*,int) ; 
 int FUNC4 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 
 struct snd_pcm_substream* FUNC6 (struct snd_soc_pcm_runtime*,int) ; 
 int FUNC7 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_pcm_runtime *fe, int stream)
{
	struct snd_pcm_substream *substream =
		FUNC6(fe, stream);
	enum snd_soc_dpcm_trigger trigger = fe->dai_link->trigger[stream];
	int err;

	FUNC0(fe->dev, "ASoC: runtime %s close on FE %s\n",
			stream ? "capture" : "playback", fe->dai_link->name);

	if (trigger == SND_SOC_DPCM_TRIGGER_BESPOKE) {
		/* call bespoke trigger - FE takes care of all BE triggers */
		FUNC0(fe->dev, "ASoC: bespoke trigger FE %s cmd stop\n",
				fe->dai_link->name);

		err = FUNC7(substream, SNDRV_PCM_TRIGGER_STOP);
		if (err < 0)
			FUNC1(fe->dev,"ASoC: trigger FE failed %d\n", err);
	} else {
		FUNC0(fe->dev, "ASoC: trigger FE %s cmd stop\n",
			fe->dai_link->name);

		err = FUNC4(fe, stream, SNDRV_PCM_TRIGGER_STOP);
		if (err < 0)
			FUNC1(fe->dev,"ASoC: trigger FE failed %d\n", err);
	}

	err = FUNC2(fe, stream);
	if (err < 0)
		FUNC1(fe->dev,"ASoC: hw_free FE failed %d\n", err);

	err = FUNC3(fe, stream);
	if (err < 0)
		FUNC1(fe->dev,"ASoC: shutdown FE failed %d\n", err);

	/* run the stream event for each BE */
	FUNC5(fe, stream, SND_SOC_DAPM_STREAM_NOP);

	return 0;
}
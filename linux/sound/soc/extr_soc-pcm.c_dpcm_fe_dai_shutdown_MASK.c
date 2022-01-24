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
struct snd_soc_pcm_runtime {TYPE_1__* dpcm; TYPE_2__* dai_link; int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DAPM_STREAM_STOP ; 
 int /*<<< orphan*/  SND_SOC_DPCM_STATE_CLOSE ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_FE ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *fe = substream->private_data;
	int stream = substream->stream;

	FUNC3(fe, stream, SND_SOC_DPCM_UPDATE_FE);

	/* shutdown the BEs */
	FUNC1(fe, substream->stream);

	FUNC0(fe->dev, "ASoC: close FE %s\n", fe->dai_link->name);

	/* now shutdown the frontend */
	FUNC4(substream);

	/* run the stream event for each BE */
	FUNC2(fe, stream, SND_SOC_DAPM_STREAM_STOP);

	fe->dpcm[stream].state = SND_SOC_DPCM_STATE_CLOSE;
	FUNC3(fe, stream, SND_SOC_DPCM_UPDATE_NO);
	return 0;
}
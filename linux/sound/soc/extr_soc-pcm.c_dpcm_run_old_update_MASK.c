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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_BE ; 
 int /*<<< orphan*/  SND_SOC_DPCM_UPDATE_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct snd_soc_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_pcm_runtime *fe, int stream)
{
	int ret;

	FUNC2(fe, stream, SND_SOC_DPCM_UPDATE_BE);
	ret = FUNC1(fe, stream);
	if (ret < 0)
		FUNC0(fe->dev, "ASoC: failed to shutdown some BEs\n");
	FUNC2(fe, stream, SND_SOC_DPCM_UPDATE_NO);

	return ret;
}
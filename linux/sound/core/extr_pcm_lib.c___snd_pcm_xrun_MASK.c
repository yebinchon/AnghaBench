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
struct timespec {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ tstamp_mode; TYPE_1__* status; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  tstamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STATE_XRUN ; 
 scalar_t__ SNDRV_PCM_TSTAMP_ENABLE ; 
 int /*<<< orphan*/  XRUN_DEBUG_BASIC ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

void FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC5(substream);
	if (runtime->tstamp_mode == SNDRV_PCM_TSTAMP_ENABLE)
		FUNC3(runtime, (struct timespec *)&runtime->status->tstamp);
	FUNC4(substream, SNDRV_PCM_STATE_XRUN);
	if (FUNC6(substream, XRUN_DEBUG_BASIC)) {
		char name[16];
		FUNC2(substream, name, sizeof(name));
		FUNC1(substream->pcm, "XRUN: %s\n", name);
		FUNC0(substream);
	}
}
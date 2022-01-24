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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_1__* status; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int EBADFD ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 scalar_t__ SNDRV_PCM_STATE_DISCONNECTED ; 
 scalar_t__ SNDRV_PCM_STATE_OPEN ; 
 scalar_t__ SNDRV_PCM_STATE_PAUSED ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_SETUP ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime;
	int result = 0;
	
	if (FUNC0(substream))
		return -ENXIO;
	runtime = substream->runtime;

	if (runtime->status->state == SNDRV_PCM_STATE_OPEN ||
	    runtime->status->state == SNDRV_PCM_STATE_DISCONNECTED)
		return -EBADFD;

	FUNC3(substream);
	/* resume pause */
	if (runtime->status->state == SNDRV_PCM_STATE_PAUSED)
		FUNC1(substream, 0);

	FUNC2(substream, SNDRV_PCM_STATE_SETUP);
	/* runtime->control->appl_ptr = runtime->status->hw_ptr; */
	FUNC4(substream);

	return result;
}
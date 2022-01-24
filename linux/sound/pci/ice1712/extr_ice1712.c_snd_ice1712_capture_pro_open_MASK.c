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
struct TYPE_2__ {void* rate_max; void* rate_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct snd_ice1712 {struct snd_pcm_substream* capture_pro_substream; } ;

/* Variables and functions */
 void* PRO_RATE_DEFAULT ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  hw_constraints_rates ; 
 scalar_t__ FUNC0 (struct snd_ice1712*) ; 
 TYPE_1__ snd_ice1712_capture_pro ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	ice->capture_pro_substream = substream;
	runtime->hw = snd_ice1712_capture_pro;
	FUNC3(substream);
	FUNC2(runtime, 0, 32, 24);
	FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_RATE, &hw_constraints_rates);
	if (FUNC0(ice)) {
		runtime->hw.rate_min = PRO_RATE_DEFAULT;
		runtime->hw.rate_max = PRO_RATE_DEFAULT;
	}

	return 0;
}
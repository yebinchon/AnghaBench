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
struct snd_pcm_runtime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_runtime *runtime)
{
	int err;
	err = FUNC0(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
	if (err < 0)
		return err;
	err = FUNC1(runtime, SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 256, UINT_MAX);
	if (err < 0)
		return err;
	return 0;
}
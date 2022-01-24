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
struct rme32 {int /*<<< orphan*/  fullduplex_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  RME32_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int /*<<< orphan*/  hw_constraints_period_bytes ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rme32 *rme32, struct snd_pcm_runtime *runtime)
{
	if (! rme32->fullduplex_mode) {
		FUNC1(runtime,
					     SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
					     RME32_BUFFER_SIZE);
		FUNC0(runtime, 0,
					   SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
					   &hw_constraints_period_bytes);
	}
}
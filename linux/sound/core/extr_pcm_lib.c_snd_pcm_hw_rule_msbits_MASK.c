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
struct snd_pcm_hw_rule {scalar_t__ private; } ;
struct snd_pcm_hw_params {int /*<<< orphan*/  msbits; } ;
struct snd_interval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_SAMPLE_BITS ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_interval const*) ; 
 unsigned int FUNC3 (struct snd_interval const*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_hw_params *params,
				  struct snd_pcm_hw_rule *rule)
{
	unsigned int l = (unsigned long) rule->private;
	int width = l & 0xffff;
	unsigned int msbits = l >> 16;
	const struct snd_interval *i =
		FUNC0(params, SNDRV_PCM_HW_PARAM_SAMPLE_BITS);

	if (!FUNC2(i))
		return 0;

	if ((FUNC3(i) == width) ||
	    (width == 0 && FUNC3(i) > msbits))
		params->msbits = FUNC1(params->msbits, msbits);

	return 0;
}
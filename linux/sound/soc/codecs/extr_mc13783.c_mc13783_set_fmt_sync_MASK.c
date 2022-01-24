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
struct snd_soc_dai {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC13783_AUDIO_CODEC ; 
 int /*<<< orphan*/  MC13783_AUDIO_DAC ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFS ; 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
 int FUNC0 (struct snd_soc_dai*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dai *dai, unsigned int fmt)
{
	int ret;

	ret = FUNC0(dai, fmt, MC13783_AUDIO_DAC);
	if (ret)
		return ret;

	/*
	 * In synchronous mode force the voice codec into slave mode
	 * so that the clock / framesync from the stereo DAC is used
	 */
	fmt &= ~SND_SOC_DAIFMT_MASTER_MASK;
	fmt |= SND_SOC_DAIFMT_CBS_CFS;
	ret = FUNC0(dai, fmt, MC13783_AUDIO_CODEC);

	return ret;
}
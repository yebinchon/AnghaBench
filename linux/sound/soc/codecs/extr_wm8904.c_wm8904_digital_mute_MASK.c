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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8904_DAC_DIGITAL_1 ; 
 int WM8904_DAC_MUTE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dai *codec_dai, int mute)
{
	struct snd_soc_component *component = codec_dai->component;
	int val;

	if (mute)
		val = WM8904_DAC_MUTE;
	else
		val = 0;

	FUNC0(component, WM8904_DAC_DIGITAL_1, WM8904_DAC_MUTE, val);

	return 0;
}
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
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  RT1011_SYSTEM_RESET_1 ; 
 int /*<<< orphan*/  RT1011_SYSTEM_RESET_2 ; 
 int /*<<< orphan*/  RT1011_SYSTEM_RESET_3 ; 
#define  SND_SOC_BIAS_OFF 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	switch (level) {
	case SND_SOC_BIAS_OFF:
		FUNC0(component,
			RT1011_SYSTEM_RESET_1, 0x0000);
		FUNC0(component,
			RT1011_SYSTEM_RESET_2, 0x0000);
		FUNC0(component,
			RT1011_SYSTEM_RESET_3, 0x0001);
		FUNC0(component,
			RT1011_SYSTEM_RESET_1, 0x003f);
		FUNC0(component,
			RT1011_SYSTEM_RESET_2, 0x7fd7);
		FUNC0(component,
			RT1011_SYSTEM_RESET_3, 0x770f);
		break;
	default:
		break;
	}

	return 0;
}
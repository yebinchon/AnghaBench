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
 int /*<<< orphan*/  AK4535_DAC ; 
 int /*<<< orphan*/  AK4535_PM1 ; 
 int /*<<< orphan*/  AK4535_PM2 ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_component *component,
	enum snd_soc_bias_level level)
{
	switch (level) {
	case SND_SOC_BIAS_ON:
		FUNC0(component, AK4535_DAC, 0x20, 0);
		break;
	case SND_SOC_BIAS_PREPARE:
		FUNC0(component, AK4535_DAC, 0x20, 0x20);
		break;
	case SND_SOC_BIAS_STANDBY:
		FUNC0(component, AK4535_PM1, 0x80, 0x80);
		FUNC0(component, AK4535_PM2, 0x80, 0);
		break;
	case SND_SOC_BIAS_OFF:
		FUNC0(component, AK4535_PM1, 0x80, 0);
		break;
	}
	return 0;
}
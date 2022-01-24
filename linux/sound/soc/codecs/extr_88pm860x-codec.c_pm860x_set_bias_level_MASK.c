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
struct pm860x_priv {int /*<<< orphan*/  i2c; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int AUDIO_PLL ; 
 int AUDIO_SECTION_ON ; 
 int AUDIO_SECTION_RESET ; 
 int /*<<< orphan*/  REG_MISC2 ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 struct pm860x_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct pm860x_priv *pm860x = FUNC3(component);
	int data;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC2(component) == SND_SOC_BIAS_OFF) {
			/* Enable Audio PLL & Audio section */
			data = AUDIO_PLL | AUDIO_SECTION_ON;
			FUNC0(pm860x->i2c, REG_MISC2, data);
			FUNC4(300);
			data = AUDIO_PLL | AUDIO_SECTION_RESET
				| AUDIO_SECTION_ON;
			FUNC0(pm860x->i2c, REG_MISC2, data);
		}
		break;

	case SND_SOC_BIAS_OFF:
		data = AUDIO_PLL | AUDIO_SECTION_RESET | AUDIO_SECTION_ON;
		FUNC1(pm860x->i2c, REG_MISC2, data, 0);
		break;
	}
	return 0;
}
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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5659_4BTN_IL_CMD_1 ; 
 int /*<<< orphan*/  RT5659_4BTN_IL_CMD_2 ; 
 int /*<<< orphan*/  RT5659_4BTN_IL_DIS ; 
 int /*<<< orphan*/  RT5659_4BTN_IL_EN ; 
 int /*<<< orphan*/  RT5659_4BTN_IL_MASK ; 
 int /*<<< orphan*/  RT5659_IL_IRQ_DIS ; 
 int /*<<< orphan*/  RT5659_IL_IRQ_EN ; 
 int /*<<< orphan*/  RT5659_IL_IRQ_MASK ; 
 int /*<<< orphan*/  RT5659_IRQ_CTRL_2 ; 
 int /*<<< orphan*/  RT5659_PWR_ANLG_2 ; 
 int /*<<< orphan*/  RT5659_PWR_MB1 ; 
 int /*<<< orphan*/  RT5659_PWR_MIC_DET ; 
 int /*<<< orphan*/  RT5659_PWR_VOL ; 
 struct snd_soc_dapm_context* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *component,
	bool enable)
{
	struct snd_soc_dapm_context *dapm = FUNC0(component);

	if (enable) {
		FUNC2(component, RT5659_4BTN_IL_CMD_1, 0x000b);

		/* MICBIAS1 and Mic Det Power for button detect*/
		FUNC4(dapm, "MICBIAS1");
		FUNC4(dapm,
			"Mic Det Power");
		FUNC5(dapm);

		FUNC1(component, RT5659_PWR_ANLG_2,
			RT5659_PWR_MB1, RT5659_PWR_MB1);
		FUNC1(component, RT5659_PWR_VOL,
			RT5659_PWR_MIC_DET, RT5659_PWR_MIC_DET);

		FUNC1(component, RT5659_IRQ_CTRL_2,
				RT5659_IL_IRQ_MASK, RT5659_IL_IRQ_EN);
		FUNC1(component, RT5659_4BTN_IL_CMD_2,
				RT5659_4BTN_IL_MASK, RT5659_4BTN_IL_EN);
	} else {
		FUNC1(component, RT5659_4BTN_IL_CMD_2,
				RT5659_4BTN_IL_MASK, RT5659_4BTN_IL_DIS);
		FUNC1(component, RT5659_IRQ_CTRL_2,
				RT5659_IL_IRQ_MASK, RT5659_IL_IRQ_DIS);
		/* MICBIAS1 and Mic Det Power for button detect*/
		FUNC3(dapm, "MICBIAS1");
		FUNC3(dapm, "Mic Det Power");
		FUNC5(dapm);
	}
}
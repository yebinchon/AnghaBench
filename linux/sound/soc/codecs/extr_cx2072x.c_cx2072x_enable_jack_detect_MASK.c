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
struct cx2072x_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2072X_ANALOG_TEST12 ; 
 int /*<<< orphan*/  CX2072X_DIGITAL_TEST1 ; 
 int /*<<< orphan*/  CX2072X_DIGITAL_TEST15 ; 
 int /*<<< orphan*/  CX2072X_GPIO_STICKY_MASK ; 
 int /*<<< orphan*/  CX2072X_PORTA_UNSOLICITED_RESPONSE ; 
 int /*<<< orphan*/  CX2072X_UM_INTERRUPT_CRTL_E ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 struct cx2072x_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *codec)
{
	struct cx2072x_priv *cx2072x = FUNC2(codec);
	struct snd_soc_dapm_context *dapm = FUNC1(codec);

	/* No-sticky input type */
	FUNC0(cx2072x->regmap, CX2072X_GPIO_STICKY_MASK, 0x1f);

	/* Use GPOI0 as interrupt pin */
	FUNC0(cx2072x->regmap, CX2072X_UM_INTERRUPT_CRTL_E, 0x12 << 24);

	/* Enables unsolitited message on PortA */
	FUNC0(cx2072x->regmap, CX2072X_PORTA_UNSOLICITED_RESPONSE, 0x80);

	/* support both nokia and apple headset set. Monitor time = 275 ms */
	FUNC0(cx2072x->regmap, CX2072X_DIGITAL_TEST15, 0x73);

	/* Disable TIP detection */
	FUNC0(cx2072x->regmap, CX2072X_ANALOG_TEST12, 0x300);

	/* Switch MusicD3Live pin to GPIO */
	FUNC0(cx2072x->regmap, CX2072X_DIGITAL_TEST1, 0);

	FUNC4(dapm);

	FUNC3(dapm, "PORTD");
	FUNC3(dapm, "Headset Bias");
	FUNC3(dapm, "PortD Mic Bias");

	FUNC5(dapm);
}
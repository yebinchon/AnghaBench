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
struct wm8962_priv {struct snd_soc_jack* jack; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int SND_JACK_BTN_0 ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  WM8962_ADDITIONAL_CONTROL_4 ; 
 int /*<<< orphan*/  WM8962_INTERRUPT_STATUS_2_MASK ; 
 int WM8962_MICDET_ENA ; 
 int WM8962_MICD_EINT ; 
 int WM8962_MICSCD_EINT ; 
 struct snd_soc_dapm_context* FUNC0 (struct snd_soc_component*) ; 
 struct wm8962_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_jack*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct snd_soc_component *component, struct snd_soc_jack *jack)
{
	struct wm8962_priv *wm8962 = FUNC1(component);
	struct snd_soc_dapm_context *dapm = FUNC0(component);
	int irq_mask, enable;

	wm8962->jack = jack;
	if (jack) {
		irq_mask = 0;
		enable = WM8962_MICDET_ENA;
	} else {
		irq_mask = WM8962_MICD_EINT | WM8962_MICSCD_EINT;
		enable = 0;
	}

	FUNC2(component, WM8962_INTERRUPT_STATUS_2_MASK,
			    WM8962_MICD_EINT | WM8962_MICSCD_EINT, irq_mask);
	FUNC2(component, WM8962_ADDITIONAL_CONTROL_4,
			    WM8962_MICDET_ENA, enable);

	/* Send an initial empty report */
	FUNC7(wm8962->jack, 0,
			    SND_JACK_MICROPHONE | SND_JACK_BTN_0);

	FUNC5(dapm);

	if (jack) {
		FUNC4(dapm, "SYSCLK");
		FUNC4(dapm, "MICBIAS");
	} else {
		FUNC3(dapm, "SYSCLK");
		FUNC3(dapm, "MICBIAS");
	}

	FUNC6(dapm);

	return 0;
}
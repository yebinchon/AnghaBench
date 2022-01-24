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
struct wm8903_priv {int mic_det; int mic_short; struct snd_soc_jack* mic_jack; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8903_INTERRUPT_STATUS_1_MASK ; 
 int WM8903_MICDET_EINT ; 
 int WM8903_MICDET_ENA ; 
 int WM8903_MICSHRT_EINT ; 
 int /*<<< orphan*/  WM8903_MIC_BIAS_CONTROL_0 ; 
 int /*<<< orphan*/  WM8903_WRITE_SEQUENCER_0 ; 
 int WM8903_WSEQ_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct wm8903_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

int FUNC3(struct snd_soc_component *component, struct snd_soc_jack *jack,
		      int det, int shrt)
{
	struct wm8903_priv *wm8903 = FUNC1(component);
	int irq_mask = WM8903_MICDET_EINT | WM8903_MICSHRT_EINT;

	FUNC0(component->dev, "Enabling microphone detection: %x %x\n",
		det, shrt);

	/* Store the configuration */
	wm8903->mic_jack = jack;
	wm8903->mic_det = det;
	wm8903->mic_short = shrt;

	/* Enable interrupts we've got a report configured for */
	if (det)
		irq_mask &= ~WM8903_MICDET_EINT;
	if (shrt)
		irq_mask &= ~WM8903_MICSHRT_EINT;

	FUNC2(component, WM8903_INTERRUPT_STATUS_1_MASK,
			    WM8903_MICDET_EINT | WM8903_MICSHRT_EINT,
			    irq_mask);

	if (det || shrt) {
		/* Enable mic detection, this may not have been set through
		 * platform data (eg, if the defaults are OK). */
		FUNC2(component, WM8903_WRITE_SEQUENCER_0,
				    WM8903_WSEQ_ENA, WM8903_WSEQ_ENA);
		FUNC2(component, WM8903_MIC_BIAS_CONTROL_0,
				    WM8903_MICDET_ENA, WM8903_MICDET_ENA);
	} else {
		FUNC2(component, WM8903_MIC_BIAS_CONTROL_0,
				    WM8903_MICDET_ENA, 0);
	}

	return 0;
}
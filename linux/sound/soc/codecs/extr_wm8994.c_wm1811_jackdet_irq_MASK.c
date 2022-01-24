#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct snd_soc_component* component; } ;
struct wm8994_priv {int mic_detecting; int jack_mic; int btn_mask; TYPE_3__* micdet; int /*<<< orphan*/  accdet_lock; int /*<<< orphan*/  mic_work; int /*<<< orphan*/  mic_complete_work; TYPE_1__ hubs; struct wm8994* wm8994; } ;
struct TYPE_5__ {int micdet_delay; scalar_t__ jd_ext_cap; } ;
struct wm8994 {TYPE_2__ pdata; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_MECHANICAL ; 
 int /*<<< orphan*/  WM1811_JACKDET_CTRL ; 
 int /*<<< orphan*/  WM1811_JACKDET_DB ; 
 int WM1811_JACKDET_LVL ; 
 int /*<<< orphan*/  WM1811_JACKDET_MODE_JACK ; 
 int /*<<< orphan*/  WM8958_MICB2_DISCH ; 
 int /*<<< orphan*/  WM8958_MICBIAS2 ; 
 int /*<<< orphan*/  WM8958_MICD_ENA ; 
 int /*<<< orphan*/  WM8958_MIC_DETECT_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC9 (struct snd_soc_component*) ; 
 int FUNC10 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 int /*<<< orphan*/  FUNC14 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_soc_component*) ; 

__attribute__((used)) static irqreturn_t FUNC16(int irq, void *data)
{
	struct wm8994_priv *wm8994 = data;
	struct wm8994 *control = wm8994->wm8994;
	struct snd_soc_component *component = wm8994->hubs.component;
	struct snd_soc_dapm_context *dapm = FUNC9(component);
	int reg, delay;
	bool present;

	FUNC6(component->dev);

	FUNC0(&wm8994->mic_complete_work);

	FUNC4(&wm8994->accdet_lock);

	reg = FUNC10(component, WM1811_JACKDET_CTRL);
	if (reg < 0) {
		FUNC2(component->dev, "Failed to read jack status: %d\n", reg);
		FUNC5(&wm8994->accdet_lock);
		FUNC7(component->dev);
		return IRQ_NONE;
	}

	FUNC1(component->dev, "JACKDET %x\n", reg);

	present = reg & WM1811_JACKDET_LVL;

	if (present) {
		FUNC1(component->dev, "Jack detected\n");

		FUNC15(component);

		FUNC11(component, WM8958_MICBIAS2,
				    WM8958_MICB2_DISCH, 0);

		/* Disable debounce while inserted */
		FUNC11(component, WM1811_JACKDET_CTRL,
				    WM1811_JACKDET_DB, 0);

		delay = control->pdata.micdet_delay;
		FUNC8(system_power_efficient_wq,
				   &wm8994->mic_work,
				   FUNC3(delay));
	} else {
		FUNC1(component->dev, "Jack not detected\n");

		FUNC0(&wm8994->mic_work);

		FUNC11(component, WM8958_MICBIAS2,
				    WM8958_MICB2_DISCH, WM8958_MICB2_DISCH);

		/* Enable debounce while removed */
		FUNC11(component, WM1811_JACKDET_CTRL,
				    WM1811_JACKDET_DB, WM1811_JACKDET_DB);

		wm8994->mic_detecting = false;
		wm8994->jack_mic = false;
		FUNC11(component, WM8958_MIC_DETECT_1,
				    WM8958_MICD_ENA, 0);
		FUNC14(component, WM1811_JACKDET_MODE_JACK);
	}

	FUNC5(&wm8994->accdet_lock);

	/* Turn off MICBIAS if it was on for an external cap */
	if (control->pdata.jd_ext_cap && !present)
		FUNC12(dapm, "MICBIAS2");

	if (present)
		FUNC13(wm8994->micdet[0].jack,
				    SND_JACK_MECHANICAL, SND_JACK_MECHANICAL);
	else
		FUNC13(wm8994->micdet[0].jack, 0,
				    SND_JACK_MECHANICAL | SND_JACK_HEADSET |
				    wm8994->btn_mask);

	/* Since we only report deltas force an update, ensures we
	 * avoid bootstrapping issues with the core. */
	FUNC13(wm8994->micdet[0].jack, 0, 0);

	FUNC7(component->dev);
	return IRQ_HANDLED;
}
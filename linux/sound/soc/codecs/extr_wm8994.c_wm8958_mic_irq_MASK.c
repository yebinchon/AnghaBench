#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct snd_soc_component* component; } ;
struct wm8994_priv {int btn_mask; int mic_detecting; int mic_status; int /*<<< orphan*/  mic_complete_work; TYPE_4__* wm8994; TYPE_2__* micdet; scalar_t__ jackdet; int /*<<< orphan*/  open_circuit_work; TYPE_1__ hubs; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_7__ {int mic_id_delay; } ;
struct TYPE_8__ {TYPE_3__ pdata; } ;
struct TYPE_6__ {int /*<<< orphan*/  jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_MECHANICAL ; 
 int /*<<< orphan*/  WM1811_JACKDET_CTRL ; 
 int WM1811_JACKDET_LVL ; 
 int WM8958_MICD_ENA ; 
 int WM8958_MICD_LVL_MASK ; 
 int WM8958_MICD_STS ; 
 int WM8958_MICD_VALID ; 
 int /*<<< orphan*/  WM8958_MIC_DETECT_1 ; 
 int /*<<< orphan*/  WM8958_MIC_DETECT_3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_soc_component*,int) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *data)
{
	struct wm8994_priv *wm8994 = data;
	struct snd_soc_component *component = wm8994->hubs.component;
	int reg, count, ret, id_delay;

	/*
	 * Jack detection may have detected a removal simulataneously
	 * with an update of the MICDET status; if so it will have
	 * stopped detection and we can ignore this interrupt.
	 */
	if (!(FUNC10(component, WM8958_MIC_DETECT_1) & WM8958_MICD_ENA))
		return IRQ_HANDLED;

	FUNC0(&wm8994->mic_complete_work);
	FUNC0(&wm8994->open_circuit_work);

	FUNC7(component->dev);

	/* We may occasionally read a detection without an impedence
	 * range being provided - if that happens loop again.
	 */
	count = 10;
	do {
		reg = FUNC10(component, WM8958_MIC_DETECT_3);
		if (reg < 0) {
			FUNC2(component->dev,
				"Failed to read mic detect status: %d\n",
				reg);
			FUNC8(component->dev);
			return IRQ_NONE;
		}

		if (!(reg & WM8958_MICD_VALID)) {
			FUNC1(component->dev, "Mic detect data not valid\n");
			goto out;
		}

		if (!(reg & WM8958_MICD_STS) || (reg & WM8958_MICD_LVL_MASK))
			break;

		FUNC6(1);
	} while (count--);

	if (count == 0)
		FUNC4(component->dev, "No impedance range reported for jack\n");

#ifndef CONFIG_SND_SOC_WM8994_MODULE
	FUNC12(FUNC3(component->dev));
#endif

	/* Avoid a transient report when the accessory is being removed */
	if (wm8994->jackdet) {
		ret = FUNC10(component, WM1811_JACKDET_CTRL);
		if (ret < 0) {
			FUNC2(component->dev, "Failed to read jack status: %d\n",
				ret);
		} else if (!(ret & WM1811_JACKDET_LVL)) {
			FUNC1(component->dev, "Ignoring removed jack\n");
			goto out;
		}
	} else if (!(reg & WM8958_MICD_STS)) {
		FUNC11(wm8994->micdet[0].jack, 0,
				    SND_JACK_MECHANICAL | SND_JACK_HEADSET |
				    wm8994->btn_mask);
		wm8994->mic_detecting = true;
		goto out;
	}

	wm8994->mic_status = reg;
	id_delay = wm8994->wm8994->pdata.mic_id_delay;

	if (wm8994->mic_detecting)
		FUNC9(system_power_efficient_wq,
				   &wm8994->mic_complete_work,
				   FUNC5(id_delay));
	else
		FUNC13(component, reg);

out:
	FUNC8(component->dev);
	return IRQ_HANDLED;
}
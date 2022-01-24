#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_jack_gpio {int debounce_time; } ;
struct snd_soc_jack {int status; } ;
struct TYPE_6__ {int jd_mode; } ;
struct rt5670_priv {int jack_type; TYPE_2__* component; TYPE_1__ pdata; struct snd_soc_jack* jack; struct snd_soc_jack_gpio hp_gpio; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5670_A_JD_CTRL1 ; 
 int /*<<< orphan*/  RT5670_INT_IRQ_ST ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(void *data)
{
	struct rt5670_priv *rt5670 = (struct rt5670_priv *)data;
	struct snd_soc_jack_gpio *gpio = &rt5670->hp_gpio;
	struct snd_soc_jack *jack = rt5670->jack;
	int val, btn_type, report = jack->status;

	if (rt5670->pdata.jd_mode == 1) /* 2 port */
		val = FUNC3(rt5670->component, RT5670_A_JD_CTRL1) & 0x0070;
	else
		val = FUNC3(rt5670->component, RT5670_A_JD_CTRL1) & 0x0020;

	switch (val) {
	/* jack in */
	case 0x30: /* 2 port */
	case 0x0: /* 1 port or 2 port */
		if (rt5670->jack_type == 0) {
			report = FUNC2(rt5670->component, 1);
			/* for push button and jack out */
			gpio->debounce_time = 25;
			break;
		}
		btn_type = 0;
		if (FUNC3(rt5670->component, RT5670_INT_IRQ_ST) & 0x4) {
			/* button pressed */
			report = SND_JACK_HEADSET;
			btn_type = FUNC1(rt5670->component);
			switch (btn_type) {
			case 0x2000: /* up */
				report |= SND_JACK_BTN_1;
				break;
			case 0x0400: /* center */
				report |= SND_JACK_BTN_0;
				break;
			case 0x0080: /* down */
				report |= SND_JACK_BTN_2;
				break;
			default:
				FUNC0(rt5670->component->dev,
					"Unexpected button code 0x%04x\n",
					btn_type);
				break;
			}
		}
		if (btn_type == 0)/* button release */
			report =  rt5670->jack_type;

		break;
	/* jack out */
	case 0x70: /* 2 port */
	case 0x10: /* 2 port */
	case 0x20: /* 1 port */
		report = 0;
		FUNC4(rt5670->component, RT5670_INT_IRQ_ST, 0x1, 0x0);
		FUNC2(rt5670->component, 0);
		gpio->debounce_time = 150; /* for jack in */
		break;
	default:
		break;
	}

	return report;
}
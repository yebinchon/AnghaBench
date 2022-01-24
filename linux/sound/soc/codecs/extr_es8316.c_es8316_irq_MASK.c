#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct es8316_priv {int /*<<< orphan*/  lock; TYPE_1__* jack; scalar_t__ jd_inverted; int /*<<< orphan*/  regmap; struct snd_soc_component* component; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ES8316_GPIO_FLAG ; 
 unsigned int ES8316_GPIO_FLAG_GM_NOT_SHORTED ; 
 unsigned int ES8316_GPIO_FLAG_HP_NOT_INSERTED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct es8316_priv *es8316 = data;
	struct snd_soc_component *comp = es8316->component;
	unsigned int flags;

	FUNC3(&es8316->lock);

	FUNC5(es8316->regmap, ES8316_GPIO_FLAG, &flags);
	if (flags == 0x00)
		goto out; /* Powered-down / reset */

	/* Catch spurious IRQ before set_jack is called */
	if (!es8316->jack)
		goto out;

	if (es8316->jd_inverted)
		flags ^= ES8316_GPIO_FLAG_HP_NOT_INSERTED;

	FUNC0(comp->dev, "gpio flags %#04x\n", flags);
	if (flags & ES8316_GPIO_FLAG_HP_NOT_INSERTED) {
		/* Jack removed, or spurious IRQ? */
		if (es8316->jack->status & SND_JACK_MICROPHONE)
			FUNC1(comp);

		if (es8316->jack->status & SND_JACK_HEADPHONE) {
			FUNC6(es8316->jack, 0,
					    SND_JACK_HEADSET | SND_JACK_BTN_0);
			FUNC0(comp->dev, "jack unplugged\n");
		}
	} else if (!(es8316->jack->status & SND_JACK_HEADPHONE)) {
		/* Jack inserted, determine type */
		FUNC2(comp);
		FUNC5(es8316->regmap, ES8316_GPIO_FLAG, &flags);
		if (es8316->jd_inverted)
			flags ^= ES8316_GPIO_FLAG_HP_NOT_INSERTED;
		FUNC0(comp->dev, "gpio flags %#04x\n", flags);
		if (flags & ES8316_GPIO_FLAG_HP_NOT_INSERTED) {
			/* Jack unplugged underneath us */
			FUNC1(comp);
		} else if (flags & ES8316_GPIO_FLAG_GM_NOT_SHORTED) {
			/* Open, headset */
			FUNC6(es8316->jack,
					    SND_JACK_HEADSET,
					    SND_JACK_HEADSET);
			/* Keep mic-gnd-short detection on for button press */
		} else {
			/* Shorted, headphones */
			FUNC6(es8316->jack,
					    SND_JACK_HEADPHONE,
					    SND_JACK_HEADSET);
			/* No longer need mic-gnd-short detection */
			FUNC1(comp);
		}
	} else if (es8316->jack->status & SND_JACK_MICROPHONE) {
		/* Interrupt while jack inserted, report button state */
		if (flags & ES8316_GPIO_FLAG_GM_NOT_SHORTED) {
			/* Open, button release */
			FUNC6(es8316->jack, 0, SND_JACK_BTN_0);
		} else {
			/* Short, button press */
			FUNC6(es8316->jack,
					    SND_JACK_BTN_0,
					    SND_JACK_BTN_0);
		}
	}

out:
	FUNC4(&es8316->lock);
	return IRQ_HANDLED;
}
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
struct regmap {int dummy; } ;
struct nau8825 {int button_pressed; int xtalk_protect; scalar_t__ xtalk_state; int xtalk_event; int xtalk_event_mask; int /*<<< orphan*/  jack; int /*<<< orphan*/  xtalk_work; scalar_t__ xtalk_enable; int /*<<< orphan*/  dev; int /*<<< orphan*/  high_imped; struct regmap* regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int NAU8825_BUTTONS ; 
 int NAU8825_HEADSET_COMPLETION_IRQ ; 
 int NAU8825_IMPEDANCE_MEAS_IRQ ; 
 int /*<<< orphan*/  NAU8825_IRQ_INSERT_DIS ; 
 int /*<<< orphan*/  NAU8825_IRQ_INSERT_EN ; 
 int NAU8825_JACK_EJECTION_DETECTED ; 
 int NAU8825_JACK_EJECTION_IRQ_MASK ; 
 int NAU8825_JACK_INSERTION_DETECTED ; 
 int NAU8825_JACK_INSERTION_IRQ_MASK ; 
 int NAU8825_KEY_RELEASE_IRQ ; 
 int NAU8825_KEY_SHORT_PRESS_IRQ ; 
 int /*<<< orphan*/  NAU8825_REG_INTERRUPT_DIS_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_INTERRUPT_MASK ; 
 int /*<<< orphan*/  NAU8825_REG_INT_CLR_KEY_STATUS ; 
 int /*<<< orphan*/  NAU8825_REG_IRQ_STATUS ; 
 scalar_t__ NAU8825_XTALK_DONE ; 
 scalar_t__ NAU8825_XTALK_PREPARE ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nau8825*) ; 
 scalar_t__ FUNC4 (struct regmap*) ; 
 int FUNC5 (struct nau8825*) ; 
 int FUNC6 (struct nau8825*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC8 (struct nau8825*) ; 
 scalar_t__ FUNC9 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *data)
{
	struct nau8825 *nau8825 = (struct nau8825 *)data;
	struct regmap *regmap = nau8825->regmap;
	int active_irq, clear_irq = 0, event = 0, event_mask = 0;

	if (FUNC9(regmap, NAU8825_REG_IRQ_STATUS, &active_irq)) {
		FUNC0(nau8825->dev, "failed to read irq status\n");
		return IRQ_NONE;
	}

	if ((active_irq & NAU8825_JACK_EJECTION_IRQ_MASK) ==
		NAU8825_JACK_EJECTION_DETECTED) {

		FUNC3(nau8825);
		event_mask |= SND_JACK_HEADSET;
		clear_irq = NAU8825_JACK_EJECTION_IRQ_MASK;
	} else if (active_irq & NAU8825_KEY_SHORT_PRESS_IRQ) {
		int key_status;

		FUNC9(regmap, NAU8825_REG_INT_CLR_KEY_STATUS,
			&key_status);

		/* upper 8 bits of the register are for short pressed keys,
		 * lower 8 bits - for long pressed buttons
		 */
		nau8825->button_pressed = FUNC2(
			key_status >> 8);

		event |= nau8825->button_pressed;
		event_mask |= NAU8825_BUTTONS;
		clear_irq = NAU8825_KEY_SHORT_PRESS_IRQ;
	} else if (active_irq & NAU8825_KEY_RELEASE_IRQ) {
		event_mask = NAU8825_BUTTONS;
		clear_irq = NAU8825_KEY_RELEASE_IRQ;
	} else if (active_irq & NAU8825_HEADSET_COMPLETION_IRQ) {
		if (FUNC4(regmap)) {
			event |= FUNC5(nau8825);
			if (nau8825->xtalk_enable && !nau8825->high_imped) {
				/* Apply the cross talk suppression in the
				 * headset without high impedance.
				 */
				if (!nau8825->xtalk_protect) {
					/* Raise protection for cross talk de-
					 * tection if no protection before.
					 * The driver has to cancel the pro-
					 * cess and restore changes if process
					 * is ongoing when ejection.
					 */
					int ret;
					nau8825->xtalk_protect = true;
					ret = FUNC6(nau8825, 0);
					if (ret)
						nau8825->xtalk_protect = false;
				}
				/* Startup cross talk detection process */
				if (nau8825->xtalk_protect) {
					nau8825->xtalk_state =
						NAU8825_XTALK_PREPARE;
					FUNC12(&nau8825->xtalk_work);
				}
			} else {
				/* The cross talk suppression shouldn't apply
				 * in the headset with high impedance. Thus,
				 * relieve the protection raised before.
				 */
				if (nau8825->xtalk_protect) {
					FUNC7(nau8825);
					nau8825->xtalk_protect = false;
				}
			}
		} else {
			FUNC1(nau8825->dev, "Headset completion IRQ fired but no headset connected\n");
			FUNC3(nau8825);
		}

		event_mask |= SND_JACK_HEADSET;
		clear_irq = NAU8825_HEADSET_COMPLETION_IRQ;
		/* Record the interruption report event for driver to report
		 * the event later. The jack report will delay until cross
		 * talk detection process is done.
		 */
		if (nau8825->xtalk_state == NAU8825_XTALK_PREPARE) {
			nau8825->xtalk_event = event;
			nau8825->xtalk_event_mask = event_mask;
		}
	} else if (active_irq & NAU8825_IMPEDANCE_MEAS_IRQ) {
		/* crosstalk detection enable and process on going */
		if (nau8825->xtalk_enable && nau8825->xtalk_protect)
			FUNC12(&nau8825->xtalk_work);
		clear_irq = NAU8825_IMPEDANCE_MEAS_IRQ;
	} else if ((active_irq & NAU8825_JACK_INSERTION_IRQ_MASK) ==
		NAU8825_JACK_INSERTION_DETECTED) {
		/* One more step to check GPIO status directly. Thus, the
		 * driver can confirm the real insertion interruption because
		 * the intrruption at manual mode has bypassed debounce
		 * circuit which can get rid of unstable status.
		 */
		if (FUNC4(regmap)) {
			/* Turn off insertion interruption at manual mode */
			FUNC10(regmap,
				NAU8825_REG_INTERRUPT_DIS_CTRL,
				NAU8825_IRQ_INSERT_DIS,
				NAU8825_IRQ_INSERT_DIS);
			FUNC10(regmap, NAU8825_REG_INTERRUPT_MASK,
				NAU8825_IRQ_INSERT_EN, NAU8825_IRQ_INSERT_EN);
			/* Enable interruption for jack type detection at audo
			 * mode which can detect microphone and jack type.
			 */
			FUNC8(nau8825);
		}
	}

	if (!clear_irq)
		clear_irq = active_irq;
	/* clears the rightmost interruption */
	FUNC11(regmap, NAU8825_REG_INT_CLR_KEY_STATUS, clear_irq);

	/* Delay jack report until cross talk detection is done. It can avoid
	 * application to do playback preparation when cross talk detection
	 * process is still working. Otherwise, the resource like clock and
	 * power will be issued by them at the same time and conflict happens.
	 */
	if (event_mask && nau8825->xtalk_state == NAU8825_XTALK_DONE)
		FUNC13(nau8825->jack, event, event_mask);

	return IRQ_HANDLED;
}
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
struct nau8824 {int /*<<< orphan*/  jack; int /*<<< orphan*/  jdet_work; int /*<<< orphan*/  dev; struct regmap* regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int NAU8824_BUTTONS ; 
 int /*<<< orphan*/  NAU8824_IRQ_INSERT_DIS ; 
 int /*<<< orphan*/  NAU8824_IRQ_INSERT_EN ; 
 int NAU8824_JACK_EJECTION_DETECTED ; 
 int NAU8824_JACK_INSERTION_DETECTED ; 
 int NAU8824_KEY_RELEASE_IRQ ; 
 int NAU8824_KEY_SHORT_PRESS_IRQ ; 
 int /*<<< orphan*/  NAU8824_REG_CLEAR_INT_REG ; 
 int /*<<< orphan*/  NAU8824_REG_INTERRUPT_SETTING ; 
 int /*<<< orphan*/  NAU8824_REG_INTERRUPT_SETTING_1 ; 
 int /*<<< orphan*/  NAU8824_REG_IRQ ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct nau8824*) ; 
 int /*<<< orphan*/  FUNC5 (struct nau8824*) ; 
 int /*<<< orphan*/  FUNC6 (struct nau8824*) ; 
 scalar_t__ FUNC7 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *data)
{
	struct nau8824 *nau8824 = (struct nau8824 *)data;
	struct regmap *regmap = nau8824->regmap;
	int active_irq, clear_irq = 0, event = 0, event_mask = 0;

	if (FUNC7(regmap, NAU8824_REG_IRQ, &active_irq)) {
		FUNC2(nau8824->dev, "failed to read irq status\n");
		return IRQ_NONE;
	}
	FUNC1(nau8824->dev, "IRQ %x\n", active_irq);

	if (active_irq & NAU8824_JACK_EJECTION_DETECTED) {
		FUNC4(nau8824);
		event_mask |= SND_JACK_HEADSET;
		clear_irq = NAU8824_JACK_EJECTION_DETECTED;
		/* release semaphore held after resume,
		 * and cancel jack detection
		 */
		FUNC5(nau8824);
		FUNC0(&nau8824->jdet_work);
	} else if (active_irq & NAU8824_KEY_SHORT_PRESS_IRQ) {
		int key_status, button_pressed;

		FUNC7(regmap, NAU8824_REG_CLEAR_INT_REG,
			&key_status);

		/* lower 8 bits of the register are for pressed keys */
		button_pressed = FUNC3(key_status);

		event |= button_pressed;
		FUNC1(nau8824->dev, "button %x pressed\n", event);
		event_mask |= NAU8824_BUTTONS;
		clear_irq = NAU8824_KEY_SHORT_PRESS_IRQ;
	} else if (active_irq & NAU8824_KEY_RELEASE_IRQ) {
		event_mask = NAU8824_BUTTONS;
		clear_irq = NAU8824_KEY_RELEASE_IRQ;
	} else if (active_irq & NAU8824_JACK_INSERTION_DETECTED) {
		/* Turn off insertion interruption at manual mode */
		FUNC8(regmap,
			NAU8824_REG_INTERRUPT_SETTING,
			NAU8824_IRQ_INSERT_DIS,
			NAU8824_IRQ_INSERT_DIS);
		FUNC8(regmap,
			NAU8824_REG_INTERRUPT_SETTING_1,
			NAU8824_IRQ_INSERT_EN, 0);
		/* detect microphone and jack type */
		FUNC0(&nau8824->jdet_work);
		FUNC10(&nau8824->jdet_work);

		/* Enable interruption for jack type detection at audo
		 * mode which can detect microphone and jack type.
		 */
		FUNC6(nau8824);
	}

	if (!clear_irq)
		clear_irq = active_irq;
	/* clears the rightmost interruption */
	FUNC9(regmap, NAU8824_REG_CLEAR_INT_REG, clear_irq);

	if (event_mask)
		FUNC11(nau8824->jack, event, event_mask);

	return IRQ_HANDLED;
}
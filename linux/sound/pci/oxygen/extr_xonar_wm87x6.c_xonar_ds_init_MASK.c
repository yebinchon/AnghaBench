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
struct TYPE_2__ {int anti_pop_delay; int /*<<< orphan*/  output_enable_bit; } ;
struct xonar_wm87x6 {int /*<<< orphan*/  hp_jack; TYPE_1__ generic; } ;
struct oxygen {int /*<<< orphan*/  card; int /*<<< orphan*/  interrupt_mask; struct xonar_wm87x6* model_data; } ;

/* Variables and functions */
 int GPIO_DS_HP_DETECT ; 
 int GPIO_DS_INPUT_ROUTE ; 
 int /*<<< orphan*/  GPIO_DS_OUTPUT_ENABLE ; 
 int GPIO_DS_OUTPUT_FRONTLR ; 
 int /*<<< orphan*/  OXYGEN_GPIO_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_GPIO_DATA ; 
 int /*<<< orphan*/  OXYGEN_GPIO_INTERRUPT_MASK ; 
 int /*<<< orphan*/  OXYGEN_INT_GPIO ; 
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC5 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC6 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC7 (struct oxygen*) ; 

__attribute__((used)) static void FUNC8(struct oxygen *chip)
{
	struct xonar_wm87x6 *data = chip->model_data;

	data->generic.anti_pop_delay = 300;
	data->generic.output_enable_bit = GPIO_DS_OUTPUT_ENABLE;

	FUNC5(chip);
	FUNC4(chip);

	FUNC1(chip, OXYGEN_GPIO_CONTROL,
			  GPIO_DS_INPUT_ROUTE | GPIO_DS_OUTPUT_FRONTLR);
	FUNC0(chip, OXYGEN_GPIO_CONTROL,
			    GPIO_DS_HP_DETECT);
	FUNC1(chip, OXYGEN_GPIO_DATA, GPIO_DS_INPUT_ROUTE);
	FUNC1(chip, OXYGEN_GPIO_INTERRUPT_MASK, GPIO_DS_HP_DETECT);
	chip->interrupt_mask |= OXYGEN_INT_GPIO;

	FUNC7(chip);

	FUNC3(chip->card, "Headphone",
		     SND_JACK_HEADPHONE, &data->hp_jack, false, false);
	FUNC6(chip);

	FUNC2(chip->card, "WM8776");
	FUNC2(chip->card, "WM8766");
}
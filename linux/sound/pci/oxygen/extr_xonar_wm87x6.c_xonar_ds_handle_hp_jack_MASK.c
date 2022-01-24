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
struct xonar_wm87x6 {unsigned int* wm8766_regs; int /*<<< orphan*/  hp_jack; } ;
struct oxygen {int /*<<< orphan*/  mutex; struct xonar_wm87x6* model_data; } ;

/* Variables and functions */
 int GPIO_DS_HP_DETECT ; 
 int /*<<< orphan*/  GPIO_DS_OUTPUT_FRONTLR ; 
 int /*<<< orphan*/  OXYGEN_GPIO_DATA ; 
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 size_t WM8766_DAC_CTRL ; 
 unsigned int WM8766_MUTEALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct oxygen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct oxygen*,size_t,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct oxygen *chip)
{
	struct xonar_wm87x6 *data = chip->model_data;
	bool hp_plugged;
	unsigned int reg;

	FUNC0(&chip->mutex);

	hp_plugged = !(FUNC2(chip, OXYGEN_GPIO_DATA) &
		       GPIO_DS_HP_DETECT);

	FUNC3(chip, OXYGEN_GPIO_DATA,
			      hp_plugged ? 0 : GPIO_DS_OUTPUT_FRONTLR,
			      GPIO_DS_OUTPUT_FRONTLR);

	reg = data->wm8766_regs[WM8766_DAC_CTRL] & ~WM8766_MUTEALL;
	if (hp_plugged)
		reg |= WM8766_MUTEALL;
	FUNC5(chip, WM8766_DAC_CTRL, reg);

	FUNC4(data->hp_jack, hp_plugged ? SND_JACK_HEADPHONE : 0);

	FUNC1(&chip->mutex);
}
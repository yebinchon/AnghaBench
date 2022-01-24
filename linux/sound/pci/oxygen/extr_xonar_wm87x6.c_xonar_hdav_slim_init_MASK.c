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
struct xonar_wm87x6 {int /*<<< orphan*/  hdmi; TYPE_1__ generic; } ;
struct oxygen {int /*<<< orphan*/  card; struct xonar_wm87x6* model_data; } ;

/* Variables and functions */
 int GPIO_SLIM_FIRMWARE_CLK ; 
 int GPIO_SLIM_FIRMWARE_DATA ; 
 int GPIO_SLIM_HDMI_DISABLE ; 
 int /*<<< orphan*/  GPIO_SLIM_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  OXYGEN_GPIO_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct oxygen *chip)
{
	struct xonar_wm87x6 *data = chip->model_data;

	data->generic.anti_pop_delay = 300;
	data->generic.output_enable_bit = GPIO_SLIM_OUTPUT_ENABLE;

	FUNC2(chip);

	FUNC0(chip, OXYGEN_GPIO_CONTROL,
			  GPIO_SLIM_HDMI_DISABLE |
			  GPIO_SLIM_FIRMWARE_CLK |
			  GPIO_SLIM_FIRMWARE_DATA);

	FUNC4(chip, &data->hdmi);
	FUNC3(chip);

	FUNC1(chip->card, "WM8776");
}
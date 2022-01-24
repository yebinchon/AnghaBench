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
typedef  int u8 ;
struct xonar_generic {int ext_power_bit; int has_power; int /*<<< orphan*/  ext_power_reg; } ;
struct oxygen {TYPE_1__* card; struct xonar_generic* model_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct oxygen*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct oxygen *chip)
{
	struct xonar_generic *data = chip->model_data;
	u8 has_power;

	has_power = !!(FUNC2(chip, data->ext_power_reg)
		       & data->ext_power_bit);
	if (has_power != data->has_power) {
		data->has_power = has_power;
		if (has_power) {
			FUNC1(chip->card->dev, "power restored\n");
		} else {
			FUNC0(chip->card->dev,
				   "Hey! Don't unplug the power cable!\n");
			/* TODO: stop PCMs */
		}
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  output_enable_bit; } ;
struct xonar_pcm179x {int dacs; int h6; int hp_gain_offset; TYPE_1__ generic; } ;
struct TYPE_4__ {int dac_channels_mixer; } ;
struct oxygen {int /*<<< orphan*/  card; TYPE_2__ model; struct xonar_pcm179x* model_data; } ;

/* Variables and functions */
 int GPIO_INPUT_ROUTE ; 
 int GPIO_ST_HP ; 
 int GPIO_ST_HP_REAR ; 
 int GPIO_ST_MAGIC ; 
 int /*<<< orphan*/  GPIO_ST_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  OXYGEN_GPIO_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC5 (struct oxygen*) ; 

__attribute__((used)) static void FUNC6(struct oxygen *chip)
{
	struct xonar_pcm179x *data = chip->model_data;

	data->generic.output_enable_bit = GPIO_ST_OUTPUT_ENABLE;
	data->dacs = chip->model.dac_channels_mixer / 2;
	data->h6 = chip->model.dac_channels_mixer > 2;
	data->hp_gain_offset = 2*-18;

	FUNC2(chip);

	FUNC1(chip, OXYGEN_GPIO_CONTROL,
			  GPIO_INPUT_ROUTE | GPIO_ST_HP_REAR |
			  GPIO_ST_MAGIC | GPIO_ST_HP);
	FUNC0(chip, OXYGEN_GPIO_DATA,
			    GPIO_INPUT_ROUTE | GPIO_ST_HP_REAR | GPIO_ST_HP);

	FUNC5(chip);
	FUNC4(chip);

	FUNC3(chip->card, "PCM1792A");
	FUNC3(chip->card, "CS5381");
}
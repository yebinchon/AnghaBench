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
struct xonar_pcm179x {int dacs; TYPE_1__ generic; } ;
struct oxygen {int /*<<< orphan*/  card; struct xonar_pcm179x* model_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM9780_FMIC2MIC ; 
 int /*<<< orphan*/  CM9780_JACK ; 
 int /*<<< orphan*/  GPIO_D2_ALT ; 
 int /*<<< orphan*/  GPIO_D2_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  OXYGEN_GPIO_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC6 (struct oxygen*) ; 

__attribute__((used)) static void FUNC7(struct oxygen *chip)
{
	struct xonar_pcm179x *data = chip->model_data;

	data->generic.anti_pop_delay = 300;
	data->generic.output_enable_bit = GPIO_D2_OUTPUT_ENABLE;
	data->dacs = 4;

	FUNC3(chip);

	FUNC2(chip, OXYGEN_GPIO_CONTROL, GPIO_D2_ALT);
	FUNC1(chip, OXYGEN_GPIO_DATA, GPIO_D2_ALT);

	FUNC0(chip, 0, CM9780_JACK, CM9780_FMIC2MIC);

	FUNC6(chip);
	FUNC5(chip);

	FUNC4(chip->card, "PCM1796");
	FUNC4(chip->card, "CS5381");
}
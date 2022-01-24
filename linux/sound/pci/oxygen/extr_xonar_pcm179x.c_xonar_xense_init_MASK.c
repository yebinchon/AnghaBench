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
struct TYPE_2__ {int anti_pop_delay; int /*<<< orphan*/  output_enable_bit; int /*<<< orphan*/  ext_power_bit; int /*<<< orphan*/  ext_power_int_reg; int /*<<< orphan*/  ext_power_reg; } ;
struct xonar_pcm179x {int has_cs2000; int dacs; int hp_gain_offset; TYPE_1__ generic; int /*<<< orphan*/ * cs2000_regs; } ;
struct oxygen {int /*<<< orphan*/  card; struct xonar_pcm179x* model_data; } ;

/* Variables and functions */
 size_t CS2000_FUN_CFG_1 ; 
 int /*<<< orphan*/  CS2000_REF_CLK_DIV_1 ; 
 int GPIO_INPUT_ROUTE ; 
 int GPIO_ST_HP_REAR ; 
 int GPIO_ST_MAGIC ; 
 int /*<<< orphan*/  GPIO_XENSE_OUTPUT_ENABLE ; 
 int GPIO_XENSE_SPEAKERS ; 
 int /*<<< orphan*/  GPI_EXT_POWER ; 
 int /*<<< orphan*/  MCLK_512 ; 
 int /*<<< orphan*/  OXYGEN_GPIO_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_GPIO_DATA ; 
 int /*<<< orphan*/  OXYGEN_GPI_DATA ; 
 int /*<<< orphan*/  OXYGEN_GPI_INTERRUPT_MASK ; 
 int /*<<< orphan*/  OXYGEN_I2S_A_FORMAT ; 
 int OXYGEN_I2S_BCLK_64 ; 
 int OXYGEN_I2S_BITS_16 ; 
 int OXYGEN_I2S_FORMAT_I2S ; 
 int OXYGEN_I2S_MASTER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int OXYGEN_RATE_48000 ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC8 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC9 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC10 (struct oxygen*) ; 

__attribute__((used)) static void FUNC11(struct oxygen *chip)
{
	struct xonar_pcm179x *data = chip->model_data;

	data->generic.ext_power_reg = OXYGEN_GPI_DATA;
	data->generic.ext_power_int_reg = OXYGEN_GPI_INTERRUPT_MASK;
	data->generic.ext_power_bit = GPI_EXT_POWER;
	FUNC9(chip);

	data->generic.anti_pop_delay = 100;
	data->has_cs2000 = 1;
	data->cs2000_regs[CS2000_FUN_CFG_1] = CS2000_REF_CLK_DIV_1;

	FUNC4(chip, OXYGEN_I2S_A_FORMAT,
		OXYGEN_RATE_48000 |
		OXYGEN_I2S_FORMAT_I2S |
		FUNC0(MCLK_512) |
		OXYGEN_I2S_BITS_16 |
		OXYGEN_I2S_MASTER |
		OXYGEN_I2S_BCLK_64);

	FUNC10(chip);
	FUNC1(chip);

	data->generic.output_enable_bit = GPIO_XENSE_OUTPUT_ENABLE;
	data->dacs = 1;
	data->hp_gain_offset = 2*-18;

	FUNC5(chip);

	FUNC3(chip, OXYGEN_GPIO_CONTROL,
		GPIO_INPUT_ROUTE | GPIO_ST_HP_REAR |
		GPIO_ST_MAGIC | GPIO_XENSE_SPEAKERS);
	FUNC2(chip, OXYGEN_GPIO_DATA,
		GPIO_INPUT_ROUTE | GPIO_ST_HP_REAR |
		GPIO_XENSE_SPEAKERS);

	FUNC8(chip);
	FUNC7(chip);

	FUNC6(chip->card, "PCM1796");
	FUNC6(chip->card, "CS5381");
	FUNC6(chip->card, "CS2000");
}
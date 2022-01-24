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
struct TYPE_4__ {int anti_pop_delay; } ;
struct xonar_pcm179x {int h6; int has_cs2000; int broken_i2c; int /*<<< orphan*/ * cs2000_regs; TYPE_2__ generic; } ;
struct TYPE_3__ {int dac_channels_mixer; } ;
struct oxygen {int /*<<< orphan*/  card; TYPE_1__ model; struct xonar_pcm179x* model_data; } ;

/* Variables and functions */
 size_t CS2000_FUN_CFG_1 ; 
 int /*<<< orphan*/  CS2000_REF_CLK_DIV_1 ; 
 int /*<<< orphan*/  MCLK_256 ; 
 int /*<<< orphan*/  MCLK_512 ; 
 int /*<<< orphan*/  OXYGEN_I2S_A_FORMAT ; 
 int OXYGEN_I2S_BCLK_64 ; 
 int OXYGEN_I2S_BITS_16 ; 
 int OXYGEN_I2S_FORMAT_I2S ; 
 int OXYGEN_I2S_MASTER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int OXYGEN_RATE_48000 ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC5 (struct oxygen*) ; 

__attribute__((used)) static void FUNC6(struct oxygen *chip)
{
	struct xonar_pcm179x *data = chip->model_data;

	data->generic.anti_pop_delay = 100;
	data->h6 = chip->model.dac_channels_mixer > 2;
	data->has_cs2000 = 1;
	data->cs2000_regs[CS2000_FUN_CFG_1] = CS2000_REF_CLK_DIV_1;
	data->broken_i2c = true;

	FUNC2(chip, OXYGEN_I2S_A_FORMAT,
		       OXYGEN_RATE_48000 |
		       OXYGEN_I2S_FORMAT_I2S |
		       FUNC0(data->h6 ? MCLK_256 : MCLK_512) |
		       OXYGEN_I2S_BITS_16 |
		       OXYGEN_I2S_MASTER |
		       OXYGEN_I2S_BCLK_64);

	FUNC5(chip);
	FUNC1(chip);
	FUNC4(chip);

	FUNC3(chip->card, "CS2000");
}
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
struct vx_core {int regCDSP; scalar_t__ type; int regSELMIC; } ;
struct snd_vx222 {int regCDSP; scalar_t__ type; int regSELMIC; } ;

/* Variables and functions */
 int /*<<< orphan*/  AKM_CODEC_CLOCK_FORMAT_CMD ; 
 int /*<<< orphan*/  AKM_CODEC_MUTE_CMD ; 
 int /*<<< orphan*/  AKM_CODEC_POWER_CONTROL_CMD ; 
 int /*<<< orphan*/  AKM_CODEC_RESET_OFF_CMD ; 
 int /*<<< orphan*/  CDSP ; 
 int MICRO_SELECT_INPUT_NORM ; 
 int MICRO_SELECT_NOISE_T_52DB ; 
 int MICRO_SELECT_PHANTOM_ALIM ; 
 int MICRO_SELECT_PREAMPLI_G_0 ; 
 int /*<<< orphan*/  SELMIC ; 
 int VX_CDSP_CODEC_RESET_MASK ; 
 scalar_t__ VX_TYPE_BOARD ; 
 scalar_t__ VX_TYPE_MIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vx_core* FUNC1 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct vx_core *_chip)
{
	struct snd_vx222 *chip = FUNC1(_chip);

	/* Set the reset CODEC bit to 0. */
	FUNC4(chip, CDSP, chip->regCDSP &~ VX_CDSP_CODEC_RESET_MASK);
	FUNC3(chip, CDSP);
	FUNC0(10);
	/* Set the reset CODEC bit to 1. */
	chip->regCDSP |= VX_CDSP_CODEC_RESET_MASK;
	FUNC4(chip, CDSP, chip->regCDSP);
	FUNC3(chip, CDSP);
	if (_chip->type == VX_TYPE_BOARD) {
		FUNC0(1);
		return;
	}

	FUNC0(5);  /* additionnel wait time for AKM's */

	FUNC2(_chip, AKM_CODEC_POWER_CONTROL_CMD); /* DAC power up, ADC power up, Vref power down */
	
	FUNC2(_chip, AKM_CODEC_CLOCK_FORMAT_CMD); /* default */
	FUNC2(_chip, AKM_CODEC_MUTE_CMD); /* Mute = ON ,Deemphasis = OFF */
	FUNC2(_chip, AKM_CODEC_RESET_OFF_CMD); /* DAC and ADC normal operation */

	if (_chip->type == VX_TYPE_MIC) {
		/* set up the micro input selector */
		chip->regSELMIC =  MICRO_SELECT_INPUT_NORM |
			MICRO_SELECT_PREAMPLI_G_0 |
			MICRO_SELECT_NOISE_T_52DB;

		/* reset phantom power supply */
		chip->regSELMIC &= ~MICRO_SELECT_PHANTOM_ALIM;

		FUNC4(_chip, SELMIC, chip->regSELMIC);
	}
}
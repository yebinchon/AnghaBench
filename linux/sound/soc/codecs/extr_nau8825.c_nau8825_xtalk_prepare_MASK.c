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
struct nau8825 {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int def; } ;

/* Variables and functions */
 int EINVAL ; 
 int NAU8825_DACL_CH_SEL_L ; 
 int NAU8825_DACL_CH_SEL_MASK ; 
 int NAU8825_DACL_CH_VOL_MASK ; 
 int NAU8825_DACR_CH_SEL_MASK ; 
 int NAU8825_DACR_CH_SEL_R ; 
 int NAU8825_DACR_CH_VOL_MASK ; 
 int NAU8825_HPR_VOL_MASK ; 
 int NAU8825_I2S_BLK_DIV_MASK ; 
 int NAU8825_I2S_LRC_DIV_MASK ; 
 int NAU8825_I2S_LRC_DIV_SFT ; 
 int NAU8825_I2S_MS_MASK ; 
 int NAU8825_I2S_MS_MASTER ; 
 int NAU8825_IMM_CYC_8192 ; 
 int NAU8825_IMM_CYC_MASK ; 
 int NAU8825_IMM_DAC_SRC_MASK ; 
 int NAU8825_IMM_DAC_SRC_SIN ; 
 int NAU8825_IMM_GEN_VOL_1_16th ; 
 int NAU8825_IMM_GEN_VOL_MASK ; 
 int NAU8825_IMM_THD_MASK ; 
 int NAU8825_IMM_THD_SFT ; 
 int NAU8825_IRQ_RMS_EN ; 
 int NAU8825_POWER_DOWN_DACL ; 
 int NAU8825_POWER_DOWN_DACR ; 
 int /*<<< orphan*/  NAU8825_REG_CHARGE_PUMP ; 
 int /*<<< orphan*/  NAU8825_REG_DACL_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_DACR_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_HSVOL_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_I2S_PCM_CTRL2 ; 
 int /*<<< orphan*/  NAU8825_REG_IMM_MODE_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_INTERRUPT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct nau8825*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nau8825*) ; 
 TYPE_1__* nau8825_xtalk_baktab ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC4 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC5 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct nau8825 *nau8825)
{
	int volume, index;

	/* Backup those registers changed by cross talk detection */
	FUNC1(nau8825);
	/* Config IIS as master to output signal by codec */
	FUNC6(nau8825->regmap, NAU8825_REG_I2S_PCM_CTRL2,
		NAU8825_I2S_MS_MASK | NAU8825_I2S_LRC_DIV_MASK |
		NAU8825_I2S_BLK_DIV_MASK, NAU8825_I2S_MS_MASTER |
		(0x2 << NAU8825_I2S_LRC_DIV_SFT) | 0x1);
	/* Ramp up headphone volume to 0dB to get better performance and
	 * avoid pop noise in headphone.
	 */
	index = FUNC2(NAU8825_REG_HSVOL_CTRL);
	if (index != -EINVAL) {
		volume = nau8825_xtalk_baktab[index].def &
				NAU8825_HPR_VOL_MASK;
		FUNC0(nau8825, volume, 0, 3);
	}
	FUNC3(nau8825);
	FUNC5(nau8825);
	FUNC4(nau8825);
	/* Config channel path and digital gain */
	FUNC6(nau8825->regmap, NAU8825_REG_DACL_CTRL,
		NAU8825_DACL_CH_SEL_MASK | NAU8825_DACL_CH_VOL_MASK,
		NAU8825_DACL_CH_SEL_L | 0xab);
	FUNC6(nau8825->regmap, NAU8825_REG_DACR_CTRL,
		NAU8825_DACR_CH_SEL_MASK | NAU8825_DACR_CH_VOL_MASK,
		NAU8825_DACR_CH_SEL_R | 0xab);
	/* Config cross talk parameters and generate the 23Hz sine wave with
	 * 1/16 full scale of signal level for impedance measurement.
	 */
	FUNC6(nau8825->regmap, NAU8825_REG_IMM_MODE_CTRL,
		NAU8825_IMM_THD_MASK | NAU8825_IMM_GEN_VOL_MASK |
		NAU8825_IMM_CYC_MASK | NAU8825_IMM_DAC_SRC_MASK,
		(0x9 << NAU8825_IMM_THD_SFT) | NAU8825_IMM_GEN_VOL_1_16th |
		NAU8825_IMM_CYC_8192 | NAU8825_IMM_DAC_SRC_SIN);
	/* RMS intrruption enable */
	FUNC6(nau8825->regmap,
		NAU8825_REG_INTERRUPT_MASK, NAU8825_IRQ_RMS_EN, 0);
	/* Power up left and right DAC */
	FUNC6(nau8825->regmap, NAU8825_REG_CHARGE_PUMP,
		NAU8825_POWER_DOWN_DACR | NAU8825_POWER_DOWN_DACL, 0);
}
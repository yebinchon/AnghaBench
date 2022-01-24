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
typedef  int u32 ;
struct nau8825 {int xtalk_state; int* imp_rms; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAU8825_REG_DAC_DGAIN_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_IMM_RMS_L ; 
 int NAU8825_XTALK_DONE ; 
#define  NAU8825_XTALK_HPL_R2L 131 
#define  NAU8825_XTALK_HPR_R2L 130 
#define  NAU8825_XTALK_IMM 129 
#define  NAU8825_XTALK_PREPARE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nau8825*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nau8825*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC5 (struct nau8825*) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct nau8825 *nau8825)
{
	u32 sidetone;

	switch (nau8825->xtalk_state) {
	case NAU8825_XTALK_PREPARE:
		/* In prepare state, set up clock, intrruption, DAC path, ADC
		 * path and cross talk detection parameters for preparation.
		 */
		FUNC5(nau8825);
		FUNC1(280);
		/* Trigger right headphone impedance detection */
		nau8825->xtalk_state = NAU8825_XTALK_HPR_R2L;
		FUNC3(nau8825, 0x00d2);
		break;
	case NAU8825_XTALK_HPR_R2L:
		/* In right headphone IMM state, read out right headphone
		 * impedance measure result, and then start up left side.
		 */
		FUNC7(nau8825->regmap, NAU8825_REG_IMM_RMS_L,
			&nau8825->imp_rms[NAU8825_XTALK_HPR_R2L]);
		FUNC0(nau8825->dev, "HPR_R2L imm: %x\n",
			nau8825->imp_rms[NAU8825_XTALK_HPR_R2L]);
		/* Disable then re-enable IMM mode to update */
		FUNC4(nau8825);
		/* Trigger left headphone impedance detection */
		nau8825->xtalk_state = NAU8825_XTALK_HPL_R2L;
		FUNC3(nau8825, 0x00ff);
		break;
	case NAU8825_XTALK_HPL_R2L:
		/* In left headphone IMM state, read out left headphone
		 * impedance measure result, and delay some time to wait
		 * detection sine wave output finish. Then, we can calculate
		 * the cross talk suppresstion side tone according to the L/R
		 * headphone imedance.
		 */
		FUNC7(nau8825->regmap, NAU8825_REG_IMM_RMS_L,
			&nau8825->imp_rms[NAU8825_XTALK_HPL_R2L]);
		FUNC0(nau8825->dev, "HPL_R2L imm: %x\n",
			nau8825->imp_rms[NAU8825_XTALK_HPL_R2L]);
		FUNC4(nau8825);
		FUNC1(150);
		nau8825->xtalk_state = NAU8825_XTALK_IMM;
		break;
	case NAU8825_XTALK_IMM:
		/* In impedance measure state, the orignal and cross talk
		 * signal level vlues are ready. The side tone gain is deter-
		 * mined with these signal level. After all, restore codec
		 * configuration.
		 */
		sidetone = FUNC6(
			nau8825->imp_rms[NAU8825_XTALK_HPR_R2L],
			nau8825->imp_rms[NAU8825_XTALK_HPL_R2L]);
		FUNC0(nau8825->dev, "cross talk sidetone: %x\n", sidetone);
		FUNC8(nau8825->regmap, NAU8825_REG_DAC_DGAIN_CTRL,
					(sidetone << 8) | sidetone);
		FUNC2(nau8825, false);
		nau8825->xtalk_state = NAU8825_XTALK_DONE;
		break;
	default:
		break;
	}
}
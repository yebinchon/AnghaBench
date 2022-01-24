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
struct snd_emu10k1 {int ecard_ctrl; scalar_t__ port; } ;

/* Variables and functions */
 int EC_ADCCAL ; 
 int EC_DACCAL ; 
 int /*<<< orphan*/  EC_DEFAULT_ADC_GAIN ; 
 int /*<<< orphan*/  EC_DEFAULT_SPDIF0_SEL ; 
 int /*<<< orphan*/  EC_DEFAULT_SPDIF1_SEL ; 
 int EC_LEDN ; 
 int EC_RAW_RUN_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EC_TRIM_CSN ; 
 scalar_t__ HCFG ; 
 unsigned int HCFG_AUDIOENABLE ; 
 unsigned int HCFG_CODECFORMAT_I2S ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu10k1*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu10k1*,int) ; 

__attribute__((used)) static int FUNC7(struct snd_emu10k1 *emu)
{
	unsigned int hc_value;

	/* Set up the initial settings */
	emu->ecard_ctrl = EC_RAW_RUN_MODE |
			  FUNC0(EC_DEFAULT_SPDIF0_SEL) |
			  FUNC1(EC_DEFAULT_SPDIF1_SEL);

	/* Step 0: Set the codec type in the hardware control register
	 * and enable audio output */
	hc_value = FUNC2(emu->port + HCFG);
	FUNC3(hc_value | HCFG_AUDIOENABLE | HCFG_CODECFORMAT_I2S, emu->port + HCFG);
	FUNC2(emu->port + HCFG);

	/* Step 1: Turn off the led and deassert TRIM_CS */
	FUNC5(emu, EC_ADCCAL | EC_LEDN | EC_TRIM_CSN);

	/* Step 2: Calibrate the ADC and DAC */
	FUNC5(emu, EC_DACCAL | EC_LEDN | EC_TRIM_CSN);

	/* Step 3: Wait for awhile;   XXX We can't get away with this
	 * under a real operating system; we'll need to block and wait that
	 * way. */
	FUNC6(emu, 48000);

	/* Step 4: Switch off the DAC and ADC calibration.  Note
	 * That ADC_CAL is actually an inverted signal, so we assert
	 * it here to stop calibration.  */
	FUNC5(emu, EC_ADCCAL | EC_LEDN | EC_TRIM_CSN);

	/* Step 4: Switch into run mode */
	FUNC5(emu, emu->ecard_ctrl);

	/* Step 5: Set the analog input gain */
	FUNC4(emu, EC_DEFAULT_ADC_GAIN);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {unsigned int addr; } ;
struct TYPE_6__ {unsigned int addr; } ;
struct snd_emu10k1 {unsigned int* spdif_bits; int** i2c_capture_volume; unsigned int address_mode; int revision; int model; scalar_t__ port; scalar_t__ audigy; TYPE_4__* card_capabilities; TYPE_3__ silent_page; TYPE_2__ ptb_pages; TYPE_1__* card; } ;
struct TYPE_8__ {scalar_t__ i2c_adc; scalar_t__ emu_model; scalar_t__ spi_dac; scalar_t__ ca0108_chip; scalar_t__ ca0151_chip; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97SLOT ; 
 unsigned int AC97SLOT_REAR_LEFT ; 
 unsigned int AC97SLOT_REAR_RIGHT ; 
 int /*<<< orphan*/  ADCBA ; 
 int /*<<< orphan*/  ADCBS ; 
 unsigned int ADCBS_BUFSIZE_NONE ; 
 int FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ A_IOCFG ; 
 unsigned int A_IOCFG_GPOUT0 ; 
 unsigned int A_IOCFG_GPOUT1 ; 
 unsigned int A_IOCFG_GPOUT2 ; 
 int /*<<< orphan*/  A_SPDIF_SAMPLERATE ; 
 int CAPTURE_P16V_SOURCE ; 
 int /*<<< orphan*/  CLIEH ; 
 int /*<<< orphan*/  CLIEL ; 
 int /*<<< orphan*/  FXBA ; 
 int /*<<< orphan*/  FXBS ; 
 scalar_t__ HCFG ; 
 scalar_t__ HCFG2 ; 
 unsigned int HCFG_AC3ENABLE_CDSPDIF ; 
 unsigned int HCFG_AC3ENABLE_GPSPDIF ; 
 unsigned int HCFG_AUDIOENABLE ; 
 unsigned int HCFG_AUTOMUTE ; 
 unsigned int HCFG_AUTOMUTE_ASYNC ; 
 unsigned int HCFG_EMU32_SLAVE ; 
 unsigned int HCFG_EXPANDED_MEM ; 
 unsigned int HCFG_GPOUT1 ; 
 unsigned int HCFG_GPOUT2 ; 
 unsigned int HCFG_JOYENABLE ; 
 unsigned int HCFG_LOCKSOUNDCACHE ; 
 unsigned int HCFG_LOCKTANKCACHE_MASK ; 
 unsigned int HCFG_MUTEBUTTONENABLE ; 
 scalar_t__ INTE ; 
 int /*<<< orphan*/  MAPA ; 
 int /*<<< orphan*/  MAPB ; 
 unsigned int MAP_PTI_MASK0 ; 
 unsigned int MAP_PTI_MASK1 ; 
 int /*<<< orphan*/  MICBA ; 
 int /*<<< orphan*/  MICBS ; 
 int NUM_G ; 
 int P17V_I2S_SRC_SEL ; 
 int /*<<< orphan*/  PTB ; 
 int /*<<< orphan*/  SOLEH ; 
 int /*<<< orphan*/  SOLEL ; 
 int /*<<< orphan*/  SPBYPASS ; 
 unsigned int SPBYPASS_FORMAT ; 
 int /*<<< orphan*/  SPCS0 ; 
 int /*<<< orphan*/  SPCS1 ; 
 int /*<<< orphan*/  SPCS2 ; 
 int SRCMULTI_ENABLE ; 
 int SRCSel ; 
 int /*<<< orphan*/  TCB ; 
 int /*<<< orphan*/  TCBS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ ** i2c_adc_init ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu10k1*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_emu10k1*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu10k1*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emu10k1*,int) ; 
 int /*<<< orphan*/ ** spi_dac_init ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct snd_emu10k1 *emu, int enable_ir, int resume)
{
	unsigned int silent_page;
	int ch;
	u32 tmp;

	/* disable audio and lock cache */
	FUNC3(HCFG_LOCKSOUNDCACHE | HCFG_LOCKTANKCACHE_MASK |
		HCFG_MUTEBUTTONENABLE, emu->port + HCFG);

	/* reset recording buffers */
	FUNC7(emu, MICBS, 0, ADCBS_BUFSIZE_NONE);
	FUNC7(emu, MICBA, 0, 0);
	FUNC7(emu, FXBS, 0, ADCBS_BUFSIZE_NONE);
	FUNC7(emu, FXBA, 0, 0);
	FUNC7(emu, ADCBS, 0, ADCBS_BUFSIZE_NONE);
	FUNC7(emu, ADCBA, 0, 0);

	/* disable channel interrupt */
	FUNC3(0, emu->port + INTE);
	FUNC7(emu, CLIEL, 0, 0);
	FUNC7(emu, CLIEH, 0, 0);
	FUNC7(emu, SOLEL, 0, 0);
	FUNC7(emu, SOLEH, 0, 0);

	if (emu->audigy) {
		/* set SPDIF bypass mode */
		FUNC7(emu, SPBYPASS, 0, SPBYPASS_FORMAT);
		/* enable rear left + rear right AC97 slots */
		FUNC7(emu, AC97SLOT, 0, AC97SLOT_REAR_RIGHT |
				      AC97SLOT_REAR_LEFT);
	}

	/* init envelope engine */
	for (ch = 0; ch < NUM_G; ch++)
		FUNC9(emu, ch);

	FUNC7(emu, SPCS0, 0, emu->spdif_bits[0]);
	FUNC7(emu, SPCS1, 0, emu->spdif_bits[1]);
	FUNC7(emu, SPCS2, 0, emu->spdif_bits[2]);

	if (emu->card_capabilities->ca0151_chip) { /* audigy2 */
		/* Hacks for Alice3 to work independent of haP16V driver */
		/* Setup SRCMulti_I2S SamplingRate */
		tmp = FUNC6(emu, A_SPDIF_SAMPLERATE, 0);
		tmp &= 0xfffff1ff;
		tmp |= (0x2<<9);
		FUNC7(emu, A_SPDIF_SAMPLERATE, 0, tmp);

		/* Setup SRCSel (Enable Spdif,I2S SRCMulti) */
		FUNC5(emu, SRCSel, 0, 0x14);
		/* Setup SRCMulti Input Audio Enable */
		/* Use 0xFFFFFFFF to enable P16V sounds. */
		FUNC5(emu, SRCMULTI_ENABLE, 0, 0xFFFFFFFF);

		/* Enabled Phased (8-channel) P16V playback */
		FUNC3(0x0201, emu->port + HCFG2);
		/* Set playback routing. */
		FUNC5(emu, CAPTURE_P16V_SOURCE, 0, 0x78e4);
	}
	if (emu->card_capabilities->ca0108_chip) { /* audigy2 Value */
		/* Hacks for Alice3 to work independent of haP16V driver */
		FUNC1(emu->card->dev, "Audigy2 value: Special config.\n");
		/* Setup SRCMulti_I2S SamplingRate */
		tmp = FUNC6(emu, A_SPDIF_SAMPLERATE, 0);
		tmp &= 0xfffff1ff;
		tmp |= (0x2<<9);
		FUNC7(emu, A_SPDIF_SAMPLERATE, 0, tmp);

		/* Setup SRCSel (Enable Spdif,I2S SRCMulti) */
		FUNC3(0x600000, emu->port + 0x20);
		FUNC3(0x14, emu->port + 0x24);

		/* Setup SRCMulti Input Audio Enable */
		FUNC3(0x7b0000, emu->port + 0x20);
		FUNC3(0xFF000000, emu->port + 0x24);

		/* Setup SPDIF Out Audio Enable */
		/* The Audigy 2 Value has a separate SPDIF out,
		 * so no need for a mixer switch
		 */
		FUNC3(0x7a0000, emu->port + 0x20);
		FUNC3(0xFF000000, emu->port + 0x24);
		tmp = FUNC2(emu->port + A_IOCFG) & ~0x8; /* Clear bit 3 */
		FUNC3(tmp, emu->port + A_IOCFG);
	}
	if (emu->card_capabilities->spi_dac) { /* Audigy 2 ZS Notebook with DAC Wolfson WM8768/WM8568 */
		int size, n;

		size = FUNC0(spi_dac_init);
		for (n = 0; n < size; n++)
			FUNC8(emu, spi_dac_init[n]);

		FUNC5(emu, 0x60, 0, 0x10);
		/* Enable GPIOs
		 * GPIO0: Unknown
		 * GPIO1: Speakers-enabled.
		 * GPIO2: Unknown
		 * GPIO3: Unknown
		 * GPIO4: IEC958 Output on.
		 * GPIO5: Unknown
		 * GPIO6: Unknown
		 * GPIO7: Unknown
		 */
		FUNC3(0x76, emu->port + A_IOCFG); /* Windows uses 0x3f76 */
	}
	if (emu->card_capabilities->i2c_adc) { /* Audigy 2 ZS Notebook with ADC Wolfson WM8775 */
		int size, n;

		FUNC5(emu, P17V_I2S_SRC_SEL, 0, 0x2020205f);
		tmp = FUNC2(emu->port + A_IOCFG);
		FUNC3(tmp | 0x4, emu->port + A_IOCFG);  /* Set bit 2 for mic input */
		tmp = FUNC2(emu->port + A_IOCFG);
		size = FUNC0(i2c_adc_init);
		for (n = 0; n < size; n++)
			FUNC4(emu, i2c_adc_init[n][0], i2c_adc_init[n][1]);
		for (n = 0; n < 4; n++) {
			emu->i2c_capture_volume[n][0] = 0xcf;
			emu->i2c_capture_volume[n][1] = 0xcf;
		}
	}


	FUNC7(emu, PTB, 0, emu->ptb_pages.addr);
	FUNC7(emu, TCB, 0, 0);	/* taken from original driver */
	FUNC7(emu, TCBS, 0, 4);	/* taken from original driver */

	silent_page = (emu->silent_page.addr << emu->address_mode) | (emu->address_mode ? MAP_PTI_MASK1 : MAP_PTI_MASK0);
	for (ch = 0; ch < NUM_G; ch++) {
		FUNC7(emu, MAPA, ch, silent_page);
		FUNC7(emu, MAPB, ch, silent_page);
	}

	if (emu->card_capabilities->emu_model) {
		FUNC3(HCFG_AUTOMUTE_ASYNC |
			HCFG_EMU32_SLAVE |
			HCFG_AUDIOENABLE, emu->port + HCFG);
	/*
	 *  Hokay, setup HCFG
	 *   Mute Disable Audio = 0
	 *   Lock Tank Memory = 1
	 *   Lock Sound Memory = 0
	 *   Auto Mute = 1
	 */
	} else if (emu->audigy) {
		if (emu->revision == 4) /* audigy2 */
			FUNC3(HCFG_AUDIOENABLE |
			     HCFG_AC3ENABLE_CDSPDIF |
			     HCFG_AC3ENABLE_GPSPDIF |
			     HCFG_AUTOMUTE | HCFG_JOYENABLE, emu->port + HCFG);
		else
			FUNC3(HCFG_AUTOMUTE | HCFG_JOYENABLE, emu->port + HCFG);
	/* FIXME: Remove all these emu->model and replace it with a card recognition parameter,
	 * e.g. card_capabilities->joystick */
	} else if (emu->model == 0x20 ||
	    emu->model == 0xc400 ||
	    (emu->model == 0x21 && emu->revision < 6))
		FUNC3(HCFG_LOCKTANKCACHE_MASK | HCFG_AUTOMUTE, emu->port + HCFG);
	else
		/* With on-chip joystick */
		FUNC3(HCFG_LOCKTANKCACHE_MASK | HCFG_AUTOMUTE | HCFG_JOYENABLE, emu->port + HCFG);

	if (enable_ir) {	/* enable IR for SB Live */
		if (emu->card_capabilities->emu_model) {
			;  /* Disable all access to A_IOCFG for the emu1010 */
		} else if (emu->card_capabilities->i2c_adc) {
			;  /* Disable A_IOCFG for Audigy 2 ZS Notebook */
		} else if (emu->audigy) {
			unsigned int reg = FUNC2(emu->port + A_IOCFG);
			FUNC3(reg | A_IOCFG_GPOUT2, emu->port + A_IOCFG);
			FUNC10(500);
			FUNC3(reg | A_IOCFG_GPOUT1 | A_IOCFG_GPOUT2, emu->port + A_IOCFG);
			FUNC10(100);
			FUNC3(reg, emu->port + A_IOCFG);
		} else {
			unsigned int reg = FUNC2(emu->port + HCFG);
			FUNC3(reg | HCFG_GPOUT2, emu->port + HCFG);
			FUNC10(500);
			FUNC3(reg | HCFG_GPOUT1 | HCFG_GPOUT2, emu->port + HCFG);
			FUNC10(100);
			FUNC3(reg, emu->port + HCFG);
		}
	}

	if (emu->card_capabilities->emu_model) {
		;  /* Disable all access to A_IOCFG for the emu1010 */
	} else if (emu->card_capabilities->i2c_adc) {
		;  /* Disable A_IOCFG for Audigy 2 ZS Notebook */
	} else if (emu->audigy) {	/* enable analog output */
		unsigned int reg = FUNC2(emu->port + A_IOCFG);
		FUNC3(reg | A_IOCFG_GPOUT0, emu->port + A_IOCFG);
	}

	if (emu->address_mode == 0) {
		/* use 16M in 4G */
		FUNC3(FUNC2(emu->port + HCFG) | HCFG_EXPANDED_MEM, emu->port + HCFG);
	}

	return 0;
}
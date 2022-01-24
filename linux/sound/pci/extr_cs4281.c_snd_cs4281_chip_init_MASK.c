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
struct cs4281_dma {unsigned int fifo_offset; int valFCR; scalar_t__ regFCR; scalar_t__ regFSIC; scalar_t__ regHDSR; scalar_t__ regDCR; scalar_t__ regDMR; scalar_t__ regDCC; scalar_t__ regDBC; scalar_t__ regDCA; scalar_t__ regDBA; } ;
struct cs4281 {int dual_codec; int src_left_play_slot; int src_right_play_slot; int src_left_rec_slot; int src_right_rec_slot; int /*<<< orphan*/  irq; struct cs4281_dma* dma; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BA0_ACCTL ; 
 int BA0_ACCTL_ESYN ; 
 int BA0_ACCTL_VFRM ; 
 scalar_t__ BA0_ACISV ; 
 int FUNC0 (int) ; 
 scalar_t__ BA0_ACOSV ; 
 int FUNC1 (int) ; 
 scalar_t__ BA0_ACSTS ; 
 scalar_t__ BA0_ACSTS2 ; 
 int BA0_ACSTS_CRDY ; 
 scalar_t__ BA0_CFLR ; 
 unsigned int BA0_CFLR_DEFAULT ; 
 scalar_t__ BA0_CLKCR1 ; 
 int BA0_CLKCR1_DLLP ; 
 int BA0_CLKCR1_DLLRDY ; 
 int BA0_CLKCR1_SWCE ; 
 scalar_t__ BA0_CWPR ; 
 scalar_t__ BA0_DBA0 ; 
 scalar_t__ BA0_DBC0 ; 
 scalar_t__ BA0_DCA0 ; 
 scalar_t__ BA0_DCC0 ; 
 scalar_t__ BA0_DCR0 ; 
 scalar_t__ BA0_DMR0 ; 
 scalar_t__ BA0_EPPMC ; 
 unsigned int BA0_EPPMC_FPDN ; 
 scalar_t__ BA0_FCR0 ; 
 int BA0_FCR_FEN ; 
 int FUNC2 (int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (unsigned int) ; 
 scalar_t__ BA0_FSIC0 ; 
 scalar_t__ BA0_HDSR0 ; 
 scalar_t__ BA0_HICR ; 
 int BA0_HICR_EOI ; 
 scalar_t__ BA0_HIMR ; 
 int FUNC6 (int) ; 
 int BA0_HISR_DMAI ; 
 int BA0_HISR_MIDI ; 
 scalar_t__ BA0_PPLVC ; 
 scalar_t__ BA0_PPRVC ; 
 scalar_t__ BA0_SERC1 ; 
 unsigned int BA0_SERC1_AC97 ; 
 unsigned int BA0_SERC1_SO1EN ; 
 scalar_t__ BA0_SERC2 ; 
 unsigned int BA0_SERC2_AC97 ; 
 unsigned int BA0_SERC2_SI1EN ; 
 scalar_t__ BA0_SERMC ; 
 int BA0_SERMC_MSPE ; 
 int BA0_SERMC_PTC_AC97 ; 
 int FUNC7 (int) ; 
 scalar_t__ BA0_SPMC ; 
 int BA0_SPMC_ASDI2E ; 
 int BA0_SPMC_RSTN ; 
 scalar_t__ BA0_SRCSA ; 
 scalar_t__ BA0_SSPM ; 
 int BA0_SSPM_ACLEN ; 
 int BA0_SSPM_CSRCEN ; 
 int BA0_SSPM_FMEN ; 
 int BA0_SSPM_JSEN ; 
 int BA0_SSPM_MIXEN ; 
 int BA0_SSPM_PSRCEN ; 
 unsigned int CS4281_FIFO_SIZE ; 
 int EIO ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (struct cs4281*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct cs4281*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct cs4281 *chip)
{
	unsigned int tmp;
	unsigned long end_time;
	int retry_count = 2;

	/* Having EPPMC.FPDN=1 prevent proper chip initialisation */
	tmp = FUNC12(chip, BA0_EPPMC);
	if (tmp & BA0_EPPMC_FPDN)
		FUNC13(chip, BA0_EPPMC, tmp & ~BA0_EPPMC_FPDN);

      __retry:
	tmp = FUNC12(chip, BA0_CFLR);
	if (tmp != BA0_CFLR_DEFAULT) {
		FUNC13(chip, BA0_CFLR, BA0_CFLR_DEFAULT);
		tmp = FUNC12(chip, BA0_CFLR);
		if (tmp != BA0_CFLR_DEFAULT) {
			FUNC8(chip->card->dev,
				"CFLR setup failed (0x%x)\n", tmp);
			return -EIO;
		}
	}

	/* Set the 'Configuration Write Protect' register
	 * to 4281h.  Allows vendor-defined configuration
         * space between 0e4h and 0ffh to be written. */	
	FUNC13(chip, BA0_CWPR, 0x4281);
	
	if ((tmp = FUNC12(chip, BA0_SERC1)) != (BA0_SERC1_SO1EN | BA0_SERC1_AC97)) {
		FUNC8(chip->card->dev,
			"SERC1 AC'97 check failed (0x%x)\n", tmp);
		return -EIO;
	}
	if ((tmp = FUNC12(chip, BA0_SERC2)) != (BA0_SERC2_SI1EN | BA0_SERC2_AC97)) {
		FUNC8(chip->card->dev,
			"SERC2 AC'97 check failed (0x%x)\n", tmp);
		return -EIO;
	}

	/* Sound System Power Management */
	FUNC13(chip, BA0_SSPM, BA0_SSPM_MIXEN | BA0_SSPM_CSRCEN |
				           BA0_SSPM_PSRCEN | BA0_SSPM_JSEN |
				           BA0_SSPM_ACLEN | BA0_SSPM_FMEN);

	/* Serial Port Power Management */
 	/* Blast the clock control register to zero so that the
         * PLL starts out in a known state, and blast the master serial
         * port control register to zero so that the serial ports also
         * start out in a known state. */
	FUNC13(chip, BA0_CLKCR1, 0);
	FUNC13(chip, BA0_SERMC, 0);

        /* Make ESYN go to zero to turn off
         * the Sync pulse on the AC97 link. */
	FUNC13(chip, BA0_ACCTL, 0);
	FUNC16(50);
                
	/*  Drive the ARST# pin low for a minimum of 1uS (as defined in the AC97
	 *  spec) and then drive it high.  This is done for non AC97 modes since
	 *  there might be logic external to the CS4281 that uses the ARST# line
	 *  for a reset. */
	FUNC13(chip, BA0_SPMC, 0);
	FUNC16(50);
	FUNC13(chip, BA0_SPMC, BA0_SPMC_RSTN);
	FUNC10(50);

	if (chip->dual_codec)
		FUNC13(chip, BA0_SPMC, BA0_SPMC_RSTN | BA0_SPMC_ASDI2E);

	/*
	 *  Set the serial port timing configuration.
	 */
	FUNC13(chip, BA0_SERMC,
			   (chip->dual_codec ? FUNC7(chip->dual_codec) : FUNC7(1)) |
			   BA0_SERMC_PTC_AC97 | BA0_SERMC_MSPE);

	/*
	 *  Start the DLL Clock logic.
	 */
	FUNC13(chip, BA0_CLKCR1, BA0_CLKCR1_DLLP);
	FUNC10(50);
	FUNC13(chip, BA0_CLKCR1, BA0_CLKCR1_SWCE | BA0_CLKCR1_DLLP);

	/*
	 * Wait for the DLL ready signal from the clock logic.
	 */
	end_time = jiffies + HZ;
	do {
		/*
		 *  Read the AC97 status register to see if we've seen a CODEC
		 *  signal from the AC97 codec.
		 */
		if (FUNC12(chip, BA0_CLKCR1) & BA0_CLKCR1_DLLRDY)
			goto __ok0;
		FUNC11(1);
	} while (FUNC15(end_time, jiffies));

	FUNC8(chip->card->dev, "DLLRDY not seen\n");
	return -EIO;

      __ok0:

	/*
	 *  The first thing we do here is to enable sync generation.  As soon
	 *  as we start receiving bit clock, we'll start producing the SYNC
	 *  signal.
	 */
	FUNC13(chip, BA0_ACCTL, BA0_ACCTL_ESYN);

	/*
	 * Wait for the codec ready signal from the AC97 codec.
	 */
	end_time = jiffies + HZ;
	do {
		/*
		 *  Read the AC97 status register to see if we've seen a CODEC
		 *  signal from the AC97 codec.
		 */
		if (FUNC12(chip, BA0_ACSTS) & BA0_ACSTS_CRDY)
			goto __ok1;
		FUNC11(1);
	} while (FUNC15(end_time, jiffies));

	FUNC8(chip->card->dev,
		"never read codec ready from AC'97 (0x%x)\n",
		FUNC12(chip, BA0_ACSTS));
	return -EIO;

      __ok1:
	if (chip->dual_codec) {
		end_time = jiffies + HZ;
		do {
			if (FUNC12(chip, BA0_ACSTS2) & BA0_ACSTS_CRDY)
				goto __codec2_ok;
			FUNC11(1);
		} while (FUNC15(end_time, jiffies));
		FUNC9(chip->card->dev,
			 "secondary codec doesn't respond. disable it...\n");
		chip->dual_codec = 0;
	__codec2_ok: ;
	}

	/*
	 *  Assert the valid frame signal so that we can start sending commands
	 *  to the AC97 codec.
	 */

	FUNC13(chip, BA0_ACCTL, BA0_ACCTL_VFRM | BA0_ACCTL_ESYN);

	/*
	 *  Wait until we've sampled input slots 3 and 4 as valid, meaning that
	 *  the codec is pumping ADC data across the AC-link.
	 */

	end_time = jiffies + HZ;
	do {
		/*
		 *  Read the input slot valid register and see if input slots 3
		 *  4 are valid yet.
		 */
                if ((FUNC12(chip, BA0_ACISV) & (FUNC0(3) | FUNC0(4))) == (FUNC0(3) | FUNC0(4)))
                        goto __ok2;
		FUNC11(1);
	} while (FUNC15(end_time, jiffies));

	if (--retry_count > 0)
		goto __retry;
	FUNC8(chip->card->dev, "never read ISV3 and ISV4 from AC'97\n");
	return -EIO;

      __ok2:

	/*
	 *  Now, assert valid frame and the slot 3 and 4 valid bits.  This will
	 *  commense the transfer of digital audio data to the AC97 codec.
	 */
	FUNC13(chip, BA0_ACOSV, FUNC1(3) | FUNC1(4));

	/*
	 *  Initialize DMA structures
	 */
	for (tmp = 0; tmp < 4; tmp++) {
		struct cs4281_dma *dma = &chip->dma[tmp];
		dma->regDBA = BA0_DBA0 + (tmp * 0x10);
		dma->regDCA = BA0_DCA0 + (tmp * 0x10);
		dma->regDBC = BA0_DBC0 + (tmp * 0x10);
		dma->regDCC = BA0_DCC0 + (tmp * 0x10);
		dma->regDMR = BA0_DMR0 + (tmp * 8);
		dma->regDCR = BA0_DCR0 + (tmp * 8);
		dma->regHDSR = BA0_HDSR0 + (tmp * 4);
		dma->regFCR = BA0_FCR0 + (tmp * 4);
		dma->regFSIC = BA0_FSIC0 + (tmp * 4);
		dma->fifo_offset = tmp * CS4281_FIFO_SIZE;
		FUNC13(chip, dma->regFCR,
				   FUNC2(31) |
				   FUNC4(31) |
				   FUNC5(CS4281_FIFO_SIZE) |
				   FUNC3(dma->fifo_offset));
	}

	chip->src_left_play_slot = 0;	/* AC'97 left PCM playback (3) */
	chip->src_right_play_slot = 1;	/* AC'97 right PCM playback (4) */
	chip->src_left_rec_slot = 10;	/* AC'97 left PCM record (3) */
	chip->src_right_rec_slot = 11;	/* AC'97 right PCM record (4) */

	/* Activate wave playback FIFO for FM playback */
	chip->dma[0].valFCR = BA0_FCR_FEN | FUNC2(0) |
		              FUNC4(1) |
 	  	              FUNC5(CS4281_FIFO_SIZE) |
		              FUNC3(chip->dma[0].fifo_offset);
	FUNC13(chip, chip->dma[0].regFCR, chip->dma[0].valFCR);
	FUNC13(chip, BA0_SRCSA, (chip->src_left_play_slot << 0) |
					    (chip->src_right_play_slot << 8) |
					    (chip->src_left_rec_slot << 16) |
					    (chip->src_right_rec_slot << 24));

	/* Initialize digital volume */
	FUNC13(chip, BA0_PPLVC, 0);
	FUNC13(chip, BA0_PPRVC, 0);

	/* Enable IRQs */
	FUNC13(chip, BA0_HICR, BA0_HICR_EOI);
	/* Unmask interrupts */
	FUNC13(chip, BA0_HIMR, 0x7fffffff & ~(
					BA0_HISR_MIDI |
					BA0_HISR_DMAI |
					FUNC6(0) |
					FUNC6(1) |
					FUNC6(2) |
					FUNC6(3)));
	FUNC14(chip->irq);

	return 0;
}
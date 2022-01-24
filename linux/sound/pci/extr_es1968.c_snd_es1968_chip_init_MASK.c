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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct es1968 {unsigned long io_port; struct pci_dev* pci; } ;

/* Variables and functions */
 unsigned long ASSP_CONTROL_A ; 
 unsigned long ASSP_CONTROL_B ; 
 unsigned long ASSP_CONTROL_C ; 
 int CHI_CONFB ; 
 int DEBOUNCE ; 
 int DMA_CLEAR ; 
 int ESM_CONFIG_A ; 
 int ESM_CONFIG_B ; 
 int ESM_DDMA ; 
 int ESM_LEGACY_AUDIO_CONTROL ; 
 scalar_t__ ESM_RING_BUS_CONTR_A ; 
 scalar_t__ ESM_RING_BUS_CONTR_B ; 
 scalar_t__ ESM_RING_BUS_DEST ; 
 int ESS_DISABLE_AUDIO ; 
 int ESS_ENABLE_SERIAL_IRQ ; 
 int GPIO_CONFB ; 
 int HWV_CONFB ; 
 int IDMA_CONFB ; 
 int IDR2_CRAM_DATA ; 
 int /*<<< orphan*/  IDR7_WAVE_ROMRAM ; 
 int IRQ_TO_ISA ; 
 int MIDI_FIX ; 
 int NR_APUS ; 
 int NR_APU_REGS ; 
 int PCI_TIMING ; 
 int PIC_SNOOP1 ; 
 int PIC_SNOOP2 ; 
 int POST_WRITE ; 
 int /*<<< orphan*/  RINGB_EN_SPDIF ; 
 int SAFEGUARD ; 
 int SPDIF_CONFB ; 
 int SUBTR_DECODE ; 
 int SWAP_LR ; 
 scalar_t__ WC_CONTROL ; 
 scalar_t__ WC_DATA ; 
 scalar_t__ WC_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct es1968*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct es1968*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct es1968*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct es1968*) ; 
 int /*<<< orphan*/  FUNC11 (struct es1968*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct es1968*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct es1968*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC15(struct es1968 *chip)
{
	struct pci_dev *pci = chip->pci;
	int i;
	unsigned long iobase  = chip->io_port;
	u16 w;
	u32 n;

	/* We used to muck around with pci config space that
	 * we had no business messing with.  We don't know enough
	 * about the machine to know which DMA mode is appropriate, 
	 * etc.  We were guessing wrong on some machines and making
	 * them unhappy.  We now trust in the BIOS to do things right,
	 * which almost certainly means a new host of problems will
	 * arise with broken BIOS implementations.  screw 'em. 
	 * We're already intolerant of machines that don't assign
	 * IRQs.
	 */
	
	/* Config Reg A */
	FUNC8(pci, ESM_CONFIG_A, &w);

	w &= ~DMA_CLEAR;	/* Clear DMA bits */
	w &= ~(PIC_SNOOP1 | PIC_SNOOP2);	/* Clear Pic Snoop Mode Bits */
	w &= ~SAFEGUARD;	/* Safeguard off */
	w |= POST_WRITE;	/* Posted write */
	w |= PCI_TIMING;	/* PCI timing on */
	/* XXX huh?  claims to be reserved.. */
	w &= ~SWAP_LR;		/* swap left/right 
				   seems to only have effect on SB
				   Emulation */
	w &= ~SUBTR_DECODE;	/* Subtractive decode off */

	FUNC9(pci, ESM_CONFIG_A, w);

	/* Config Reg B */

	FUNC8(pci, ESM_CONFIG_B, &w);

	w &= ~(1 << 15);	/* Turn off internal clock multiplier */
	/* XXX how do we know which to use? */
	w &= ~(1 << 14);	/* External clock */

	w &= ~SPDIF_CONFB;	/* disable S/PDIF output */
	w |= HWV_CONFB;		/* HWV on */
	w |= DEBOUNCE;		/* Debounce off: easier to push the HW buttons */
	w &= ~GPIO_CONFB;	/* GPIO 4:5 */
	w |= CHI_CONFB;		/* Disconnect from the CHI.  Enabling this made a dell 7500 work. */
	w &= ~IDMA_CONFB;	/* IDMA off (undocumented) */
	w &= ~MIDI_FIX;		/* MIDI fix off (undoc) */
	w &= ~(1 << 1);		/* reserved, always write 0 */
	w &= ~IRQ_TO_ISA;	/* IRQ to ISA off (undoc) */

	FUNC9(pci, ESM_CONFIG_B, w);

	/* DDMA off */

	FUNC8(pci, ESM_DDMA, &w);
	w &= ~(1 << 0);
	FUNC9(pci, ESM_DDMA, w);

	/*
	 *	Legacy mode
	 */

	FUNC8(pci, ESM_LEGACY_AUDIO_CONTROL, &w);

	w |= ESS_DISABLE_AUDIO;	/* Disable Legacy Audio */
	w &= ~ESS_ENABLE_SERIAL_IRQ;	/* Disable SIRQ */
	w &= ~(0x1f);		/* disable mpu irq/io, game port, fm, SB */

	FUNC9(pci, ESM_LEGACY_AUDIO_CONTROL, w);

	/* Set up 978 docking control chip. */
	FUNC8(pci, 0x58, &w);
	w|=1<<2;	/* Enable 978. */
	w|=1<<3;	/* Turn on 978 hardware volume control. */
	w&=~(1<<11);	/* Turn on 978 mixer volume control. */
	FUNC9(pci, 0x58, w);
	
	/* Sound Reset */

	FUNC11(chip);

	/*
	 *	Ring Bus Setup
	 */

	/* setup usual 0x34 stuff.. 0x36 may be chip specific */
	FUNC7(0xC090, iobase + ESM_RING_BUS_DEST); /* direct sound, stereo */
	FUNC12(20);
	FUNC7(0x3000, iobase + ESM_RING_BUS_CONTR_A); /* enable ringbus/serial */
	FUNC12(20);

	/*
	 *	Reset the CODEC
	 */
	 
	FUNC10(chip);

	/* Ring Bus Control B */

	n = FUNC1(iobase + ESM_RING_BUS_CONTR_B);
	n &= ~RINGB_EN_SPDIF;	/* SPDIF off */
	//w |= RINGB_EN_2CODEC;	/* enable 2nd codec */
	FUNC6(n, iobase + ESM_RING_BUS_CONTR_B);

	/* Set hardware volume control registers to midpoints.
	   We can tell which button was pushed based on how they change. */
	FUNC5(0x88, iobase+0x1c);
	FUNC5(0x88, iobase+0x1d);
	FUNC5(0x88, iobase+0x1e);
	FUNC5(0x88, iobase+0x1f);

	/* it appears some maestros (dell 7500) only work if these are set,
	   regardless of whether we use the assp or not. */

	FUNC5(0, iobase + ASSP_CONTROL_B);
	FUNC5(3, iobase + ASSP_CONTROL_A);	/* M: Reserved bits... */
	FUNC5(0, iobase + ASSP_CONTROL_C);	/* M: Disable ASSP, ASSP IRQ's and FM Port */

	/*
	 * set up wavecache
	 */
	for (i = 0; i < 16; i++) {
		/* Write 0 into the buffer area 0x1E0->1EF */
		FUNC7(0x01E0 + i, iobase + WC_INDEX);
		FUNC7(0x0000, iobase + WC_DATA);

		/* The 1.10 test program seem to write 0 into the buffer area
		 * 0x1D0-0x1DF too.*/
		FUNC7(0x01D0 + i, iobase + WC_INDEX);
		FUNC7(0x0000, iobase + WC_DATA);
	}
	FUNC14(chip, IDR7_WAVE_ROMRAM,
			  (FUNC13(chip, IDR7_WAVE_ROMRAM) & 0xFF00));
	FUNC14(chip, IDR7_WAVE_ROMRAM,
			  FUNC13(chip, IDR7_WAVE_ROMRAM) | 0x100);
	FUNC14(chip, IDR7_WAVE_ROMRAM,
			  FUNC13(chip, IDR7_WAVE_ROMRAM) & ~0x200);
	FUNC14(chip, IDR7_WAVE_ROMRAM,
			  FUNC13(chip, IDR7_WAVE_ROMRAM) | ~0x400);


	FUNC4(chip, IDR2_CRAM_DATA, 0x0000);
	/* Now back to the DirectSound stuff */
	/* audio serial configuration.. ? */
	FUNC4(chip, 0x08, 0xB004);
	FUNC4(chip, 0x09, 0x001B);
	FUNC4(chip, 0x0A, 0x8000);
	FUNC4(chip, 0x0B, 0x3F37);
	FUNC4(chip, 0x0C, 0x0098);

	/* parallel in, has something to do with recording :) */
	FUNC4(chip, 0x0C,
		      (FUNC3(chip, 0x0C) & ~0xF000) | 0x8000);
	/* parallel out */
	FUNC4(chip, 0x0C,
		      (FUNC3(chip, 0x0C) & ~0x0F00) | 0x0500);

	FUNC4(chip, 0x0D, 0x7632);

	/* Wave cache control on - test off, sg off, 
	   enable, enable extra chans 1Mb */

	w = FUNC2(iobase + WC_CONTROL);

	w &= ~0xFA00;		/* Seems to be reserved? I don't know */
	w |= 0xA000;		/* reserved... I don't know */
	w &= ~0x0200;		/* Channels 56,57,58,59 as Extra Play,Rec Channel enable
				   Seems to crash the Computer if enabled... */
	w |= 0x0100;		/* Wave Cache Operation Enabled */
	w |= 0x0080;		/* Channels 60/61 as Placback/Record enabled */
	w &= ~0x0060;		/* Clear Wavtable Size */
	w |= 0x0020;		/* Wavetable Size : 1MB */
	/* Bit 4 is reserved */
	w &= ~0x000C;		/* DMA Stuff? I don't understand what the datasheet means */
	/* Bit 1 is reserved */
	w &= ~0x0001;		/* Test Mode off */

	FUNC7(w, iobase + WC_CONTROL);

	/* Now clear the APU control ram */
	for (i = 0; i < NR_APUS; i++) {
		for (w = 0; w < NR_APU_REGS; w++)
			FUNC0(chip, i, w, 0);

	}
}
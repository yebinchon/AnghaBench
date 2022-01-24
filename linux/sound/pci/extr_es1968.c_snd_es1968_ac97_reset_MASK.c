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
struct es1968 {unsigned long io_port; TYPE_1__* card; int /*<<< orphan*/  pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int NEC_VERSA_SUBID1 ; 
 unsigned int NEC_VERSA_SUBID2 ; 
 int /*<<< orphan*/  PCI_SUBSYSTEM_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,unsigned short*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct es1968 *chip)
{
	unsigned long ioaddr = chip->io_port;

	unsigned short save_ringbus_a;
	unsigned short save_68;
	unsigned short w;
	unsigned int vend;

	/* save configuration */
	save_ringbus_a = FUNC2(ioaddr + 0x36);

	//outw(inw(ioaddr + 0x38) & 0xfffc, ioaddr + 0x38); /* clear second codec id? */
	/* set command/status address i/o to 1st codec */
	FUNC5(FUNC2(ioaddr + 0x3a) & 0xfffc, ioaddr + 0x3a);
	FUNC5(FUNC2(ioaddr + 0x3c) & 0xfffc, ioaddr + 0x3c);

	/* disable ac link */
	FUNC5(0x0000, ioaddr + 0x36);
	save_68 = FUNC2(ioaddr + 0x68);
	FUNC7(chip->pci, 0x58, &w);	/* something magical with gpio and bus arb. */
	FUNC6(chip->pci, PCI_SUBSYSTEM_VENDOR_ID, &vend);
	if (w & 1)
		save_68 |= 0x10;
	FUNC5(0xfffe, ioaddr + 0x64);	/* unmask gpio 0 */
	FUNC5(0x0001, ioaddr + 0x68);	/* gpio write */
	FUNC5(0x0000, ioaddr + 0x60);	/* write 0 to gpio 0 */
	FUNC8(20);
	FUNC5(0x0001, ioaddr + 0x60);	/* write 1 to gpio 1 */
	FUNC3(20);

	FUNC5(save_68 | 0x1, ioaddr + 0x68);	/* now restore .. */
	FUNC5((FUNC2(ioaddr + 0x38) & 0xfffc) | 0x1, ioaddr + 0x38);
	FUNC5((FUNC2(ioaddr + 0x3a) & 0xfffc) | 0x1, ioaddr + 0x3a);
	FUNC5((FUNC2(ioaddr + 0x3c) & 0xfffc) | 0x1, ioaddr + 0x3c);

	/* now the second codec */
	/* disable ac link */
	FUNC5(0x0000, ioaddr + 0x36);
	FUNC5(0xfff7, ioaddr + 0x64);	/* unmask gpio 3 */
	save_68 = FUNC2(ioaddr + 0x68);
	FUNC5(0x0009, ioaddr + 0x68);	/* gpio write 0 & 3 ?? */
	FUNC5(0x0001, ioaddr + 0x60);	/* write 1 to gpio */
	FUNC8(20);
	FUNC5(0x0009, ioaddr + 0x60);	/* write 9 to gpio */
	FUNC3(500);
	//outw(inw(ioaddr + 0x38) & 0xfffc, ioaddr + 0x38);
	FUNC5(FUNC2(ioaddr + 0x3a) & 0xfffc, ioaddr + 0x3a);
	FUNC5(FUNC2(ioaddr + 0x3c) & 0xfffc, ioaddr + 0x3c);

#if 0				/* the loop here needs to be much better if we want it.. */
	dev_info(chip->card->dev, "trying software reset\n");
	/* try and do a software reset */
	outb(0x80 | 0x7c, ioaddr + 0x30);
	for (w = 0;; w++) {
		if ((inw(ioaddr + 0x30) & 1) == 0) {
			if (inb(ioaddr + 0x32) != 0)
				break;

			outb(0x80 | 0x7d, ioaddr + 0x30);
			if (((inw(ioaddr + 0x30) & 1) == 0)
			    && (inb(ioaddr + 0x32) != 0))
				break;
			outb(0x80 | 0x7f, ioaddr + 0x30);
			if (((inw(ioaddr + 0x30) & 1) == 0)
			    && (inb(ioaddr + 0x32) != 0))
				break;
		}

		if (w > 10000) {
			outb(inb(ioaddr + 0x37) | 0x08, ioaddr + 0x37);	/* do a software reset */
			msleep(500);	/* oh my.. */
			outb(inb(ioaddr + 0x37) & ~0x08,
				ioaddr + 0x37);
			udelay(1);
			outw(0x80, ioaddr + 0x30);
			for (w = 0; w < 10000; w++) {
				if ((inw(ioaddr + 0x30) & 1) == 0)
					break;
			}
		}
	}
#endif
	if (vend == NEC_VERSA_SUBID1 || vend == NEC_VERSA_SUBID2) {
		/* turn on external amp? */
		FUNC5(0xf9ff, ioaddr + 0x64);
		FUNC5(FUNC2(ioaddr + 0x68) | 0x600, ioaddr + 0x68);
		FUNC5(0x0209, ioaddr + 0x60);
	}

	/* restore.. */
	FUNC5(save_ringbus_a, ioaddr + 0x36);

	/* Turn on the 978 docking chip.
	   First frob the "master output enable" bit,
	   then set most of the playback volume control registers to max. */
	FUNC4(FUNC1(ioaddr+0xc0)|(1<<5), ioaddr+0xc0);
	FUNC4(0xff, ioaddr+0xc3);
	FUNC4(0xff, ioaddr+0xc4);
	FUNC4(0xff, ioaddr+0xc6);
	FUNC4(0xff, ioaddr+0xc8);
	FUNC4(0x3f, ioaddr+0xcf);
	FUNC4(0x3f, ioaddr+0xd0);
}
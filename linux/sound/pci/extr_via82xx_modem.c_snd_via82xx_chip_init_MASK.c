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
struct via82xx_modem {int ac97_secondary; TYPE_1__* card; int /*<<< orphan*/  pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPI_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct via82xx_modem*,int /*<<< orphan*/ ) ; 
 unsigned char VIA_ACLINK_C00_READY ; 
 int VIA_ACLINK_CTRL ; 
 unsigned char VIA_ACLINK_CTRL_ENABLE ; 
 unsigned char VIA_ACLINK_CTRL_INIT ; 
 unsigned char VIA_ACLINK_CTRL_RESET ; 
 unsigned char VIA_ACLINK_CTRL_SYNC ; 
 int VIA_ACLINK_STAT ; 
 int VIA_MC97_CTRL ; 
 unsigned char VIA_MC97_CTRL_INIT ; 
 unsigned int VIA_REG_AC97_BUSY ; 
 unsigned int VIA_REG_AC97_CODEC_ID_SECONDARY ; 
 unsigned int VIA_REG_AC97_CODEC_ID_SHIFT ; 
 unsigned int VIA_REG_AC97_READ ; 
 unsigned int VIA_REG_AC97_SECONDARY_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned int FUNC7 (struct via82xx_modem*) ; 
 int /*<<< orphan*/  FUNC8 (struct via82xx_modem*,unsigned int) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct via82xx_modem *chip)
{
	unsigned int val;
	unsigned long end_time;
	unsigned char pval;

	FUNC4(chip->pci, VIA_MC97_CTRL, &pval);
	if((pval & VIA_MC97_CTRL_INIT) != VIA_MC97_CTRL_INIT) {
		FUNC5(chip->pci, 0x44, pval|VIA_MC97_CTRL_INIT);
		FUNC10(100);
	}

	FUNC4(chip->pci, VIA_ACLINK_STAT, &pval);
	if (! (pval & VIA_ACLINK_C00_READY)) { /* codec not ready? */
		/* deassert ACLink reset, force SYNC */
		FUNC5(chip->pci, VIA_ACLINK_CTRL,
				      VIA_ACLINK_CTRL_ENABLE |
				      VIA_ACLINK_CTRL_RESET |
				      VIA_ACLINK_CTRL_SYNC);
		FUNC10(100);
#if 1 /* FIXME: should we do full reset here for all chip models? */
		FUNC5(chip->pci, VIA_ACLINK_CTRL, 0x00);
		FUNC10(100);
#else
		/* deassert ACLink reset, force SYNC (warm AC'97 reset) */
		pci_write_config_byte(chip->pci, VIA_ACLINK_CTRL,
				      VIA_ACLINK_CTRL_RESET|VIA_ACLINK_CTRL_SYNC);
		udelay(2);
#endif
		/* ACLink on, deassert ACLink reset, VSR, SGD data out */
		FUNC5(chip->pci, VIA_ACLINK_CTRL, VIA_ACLINK_CTRL_INIT);
		FUNC10(100);
	}
	
	FUNC4(chip->pci, VIA_ACLINK_CTRL, &pval);
	if ((pval & VIA_ACLINK_CTRL_INIT) != VIA_ACLINK_CTRL_INIT) {
		/* ACLink on, deassert ACLink reset, VSR, SGD data out */
		FUNC5(chip->pci, VIA_ACLINK_CTRL, VIA_ACLINK_CTRL_INIT);
		FUNC10(100);
	}

	/* wait until codec ready */
	end_time = jiffies + FUNC2(750);
	do {
		FUNC4(chip->pci, VIA_ACLINK_STAT, &pval);
		if (pval & VIA_ACLINK_C00_READY) /* primary codec ready */
			break;
		FUNC6(1);
	} while (FUNC9(jiffies, end_time));

	if ((val = FUNC7(chip)) & VIA_REG_AC97_BUSY)
		FUNC1(chip->card->dev,
			"AC'97 codec is not ready [0x%x]\n", val);

	FUNC8(chip, VIA_REG_AC97_READ |
				 VIA_REG_AC97_SECONDARY_VALID |
				 (VIA_REG_AC97_CODEC_ID_SECONDARY << VIA_REG_AC97_CODEC_ID_SHIFT));
	end_time = jiffies + FUNC2(750);
	FUNC8(chip, VIA_REG_AC97_READ |
				 VIA_REG_AC97_SECONDARY_VALID |
				 (VIA_REG_AC97_CODEC_ID_SECONDARY << VIA_REG_AC97_CODEC_ID_SHIFT));
	do {
		if ((val = FUNC7(chip)) & VIA_REG_AC97_SECONDARY_VALID) {
			chip->ac97_secondary = 1;
			goto __ac97_ok2;
		}
		FUNC6(1);
	} while (FUNC9(jiffies, end_time));
	/* This is ok, the most of motherboards have only one codec */

      __ac97_ok2:

	/* route FM trap to IRQ, disable FM trap */
	// pci_write_config_byte(chip->pci, VIA_FM_NMI_CTRL, 0);
	/* disable all GPI interrupts */
	FUNC3(0, FUNC0(chip, GPI_INTR));

	return 0;
}
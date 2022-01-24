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
struct TYPE_4__ {unsigned int entries_dmaaddr; int /*<<< orphan*/ * entries; } ;
struct snd_trident {int ac97_ctrl; unsigned int spdif_bits; int /*<<< orphan*/  spdif_ctrl; TYPE_2__ tlb; TYPE_1__* card; struct pci_dev* pci; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 scalar_t__ NX_ACR0_AC97_COM_STAT ; 
 unsigned int NX_SB_IRQ_DISABLE ; 
 scalar_t__ NX_SPCSTATUS ; 
 scalar_t__ NX_SPCTRL_SPCSO ; 
 scalar_t__ NX_TLBC ; 
 scalar_t__ T4D_MISCINT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_trident*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_trident*) ; 
 scalar_t__ FUNC9 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct snd_trident *trident)
{
	struct pci_dev *pci = trident->pci;
	unsigned long end_time;

	/* reset the legacy configuration and whole audio/wavetable block */
	FUNC7(pci, 0x40, 0);	/* DDMA */
	FUNC6(pci, 0x44, 0);	/* ports */
	FUNC6(pci, 0x45, 0);	/* Legacy DMA */

	FUNC6(pci, 0x46, 1); /* reset */
	FUNC10(100);
	FUNC6(pci, 0x46, 0); /* release reset */
	FUNC10(100);

	/* warm reset of the AC'97 codec */
	FUNC5(0x00000001, FUNC0(trident, NX_ACR0_AC97_COM_STAT));
	FUNC10(100);
	FUNC5(0x00000000, FUNC0(trident, NX_ACR0_AC97_COM_STAT));
	/* wait, until the codec is ready */
	end_time = (jiffies + (HZ * 3) / 4) + 1;
	do {
		if ((FUNC3(FUNC0(trident, NX_ACR0_AC97_COM_STAT)) & 0x0008) != 0)
			goto __nx_ok;
		FUNC2(trident);
	} while (FUNC9(end_time, jiffies));
	FUNC1(trident->card->dev, "AC'97 codec ready error [0x%x]\n",
		FUNC3(FUNC0(trident, NX_ACR0_AC97_COM_STAT)));
	return -EIO;

 __nx_ok:
	/* DAC on */
	trident->ac97_ctrl = 0x00000002;
	FUNC5(trident->ac97_ctrl, FUNC0(trident, NX_ACR0_AC97_COM_STAT));
	/* disable SB IRQ */
	FUNC5(NX_SB_IRQ_DISABLE, FUNC0(trident, T4D_MISCINT));

	FUNC8(trident);

	if (trident->tlb.entries != NULL) {
		unsigned int i;
		/* enable virtual addressing via TLB */
		i = trident->tlb.entries_dmaaddr;
		i |= 0x00000001;
		FUNC5(i, FUNC0(trident, NX_TLBC));
	} else {
		FUNC5(0, FUNC0(trident, NX_TLBC));
	}
	/* initialize S/PDIF */
	FUNC5(trident->spdif_bits, FUNC0(trident, NX_SPCSTATUS));
	FUNC4(trident->spdif_ctrl, FUNC0(trident, NX_SPCTRL_SPCSO + 3));

	return 0;
}
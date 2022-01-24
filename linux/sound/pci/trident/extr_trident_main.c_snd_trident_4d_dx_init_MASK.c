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
struct snd_trident {int ac97_ctrl; TYPE_1__* card; struct pci_dev* pci; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DX_ACR2_AC97_COM_STAT ; 
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_trident*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_trident*) ; 
 scalar_t__ FUNC8 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct snd_trident *trident)
{
	struct pci_dev *pci = trident->pci;
	unsigned long end_time;

	/* reset the legacy configuration and whole audio/wavetable block */
	FUNC6(pci, 0x40, 0);	/* DDMA */
	FUNC5(pci, 0x44, 0);	/* ports */
	FUNC5(pci, 0x45, 0);	/* Legacy DMA */
	FUNC5(pci, 0x46, 4); /* reset */
	FUNC9(100);
	FUNC5(pci, 0x46, 0); /* release reset */
	FUNC9(100);
	
	/* warm reset of the AC'97 codec */
	FUNC4(0x00000001, FUNC0(trident, DX_ACR2_AC97_COM_STAT));
	FUNC9(100);
	FUNC4(0x00000000, FUNC0(trident, DX_ACR2_AC97_COM_STAT));
	/* DAC on, disable SB IRQ and try to force ADC valid signal */
	trident->ac97_ctrl = 0x0000004a;
	FUNC4(trident->ac97_ctrl, FUNC0(trident, DX_ACR2_AC97_COM_STAT));
	/* wait, until the codec is ready */
	end_time = (jiffies + (HZ * 3) / 4) + 1;
	do {
		if ((FUNC3(FUNC0(trident, DX_ACR2_AC97_COM_STAT)) & 0x0010) != 0)
			goto __dx_ok;
		FUNC2(trident);
	} while (FUNC8(end_time, jiffies));
	FUNC1(trident->card->dev, "AC'97 codec ready error\n");
	return -EIO;

 __dx_ok:
	FUNC7(trident);

	return 0;
}
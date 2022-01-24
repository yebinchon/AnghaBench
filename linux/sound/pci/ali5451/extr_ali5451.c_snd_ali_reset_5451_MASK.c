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
struct snd_ali {struct pci_dev* pci; struct pci_dev* pci_m1533; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,unsigned int) ; 
 unsigned short FUNC3 (struct snd_ali*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct snd_ali *codec)
{
	struct pci_dev *pci_dev;
	unsigned short wCount, wReg;
	unsigned int   dwVal;
	
	pci_dev = codec->pci_m1533;
	if (pci_dev) {
		FUNC1(pci_dev, 0x7c, &dwVal);
		FUNC2(pci_dev, 0x7c, dwVal | 0x08000000);
		FUNC0(5);
		FUNC1(pci_dev, 0x7c, &dwVal);
		FUNC2(pci_dev, 0x7c, dwVal & 0xf7ffffff);
		FUNC0(5);
	}
	
	pci_dev = codec->pci;
	FUNC1(pci_dev, 0x44, &dwVal);
	FUNC2(pci_dev, 0x44, dwVal | 0x000c0000);
	FUNC4(500);
	FUNC1(pci_dev, 0x44, &dwVal);
	FUNC2(pci_dev, 0x44, dwVal & 0xfffbffff);
	FUNC0(5);
	
	wCount = 200;
	while(wCount--) {
		wReg = FUNC3(codec, 0, AC97_POWERDOWN);
		if ((wReg & 0x000f) == 0x000f)
			return 0;
		FUNC0(5);
	}

	/* non-fatal if you have a non PM capable codec */
	/* dev_warn(codec->card->dev, "ali5451: reset time out\n"); */
	return 0;
}
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
struct snd_ali {struct pci_dev* pci_m1533; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALI_GLOBAL_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ALI_SCTRL ; 
 int /*<<< orphan*/  ALI_SPDIF_CTRL ; 
 int /*<<< orphan*/  ALI_SPDIF_OUT_CHANNEL ; 
 unsigned char ALI_SPDIF_OUT_CH_STATUS ; 
 unsigned char ALI_SPDIF_OUT_ENABLE ; 
 unsigned short ALI_SPDIF_OUT_SEL_PCM ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_ali*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct snd_ali *codec)
{
	unsigned short wVal;
	unsigned char bVal;
        struct pci_dev *pci_dev;

        pci_dev = codec->pci_m1533;
        if (pci_dev == NULL)
                return;
        FUNC5(pci_dev, 0x61, &bVal);
        bVal |= 0x40;
        FUNC6(pci_dev, 0x61, bVal);
        FUNC5(pci_dev, 0x7d, &bVal);
        bVal |= 0x01;
        FUNC6(pci_dev, 0x7d, bVal);

        FUNC5(pci_dev, 0x7e, &bVal);
        bVal &= (~0x20);
        bVal |= 0x10;
        FUNC6(pci_dev, 0x7e, bVal);

	bVal = FUNC1(FUNC0(codec, ALI_SCTRL));
	FUNC3(bVal | ALI_SPDIF_OUT_ENABLE, FUNC0(codec, ALI_SCTRL));

	bVal = FUNC1(FUNC0(codec, ALI_SPDIF_CTRL));
	FUNC3(bVal & ALI_SPDIF_OUT_CH_STATUS, FUNC0(codec, ALI_SPDIF_CTRL));
   
	wVal = FUNC2(FUNC0(codec, ALI_GLOBAL_CONTROL));
	wVal |= ALI_SPDIF_OUT_SEL_PCM;
	FUNC4(wVal, FUNC0(codec, ALI_GLOBAL_CONTROL));
	FUNC7(codec, ALI_SPDIF_OUT_CHANNEL);
}
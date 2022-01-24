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
struct snd_ali {scalar_t__ revision; int spdif_mask; int num_of_codecs; TYPE_1__* card; scalar_t__ spdif_support; void* ac97_ext_status; void* ac97_ext_id; int /*<<< orphan*/  pci; struct pci_dev* pci_m7101; struct pci_dev* pci_m1533; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_ID ; 
 int /*<<< orphan*/  AC97_EXTENDED_STATUS ; 
 scalar_t__ ALI_5451_V02 ; 
 int /*<<< orphan*/  ALI_AINT ; 
 int /*<<< orphan*/  ALI_AINTEN ; 
 int /*<<< orphan*/  ALI_GLOBAL_CONTROL ; 
 int /*<<< orphan*/  ALI_MPUR2 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ALI_SCTRL ; 
 int ALI_SCTRL_CODEC2_READY ; 
 int ALI_SCTRL_GPIO_IN2 ; 
 int ALI_SCTRL_LINE_IN2 ; 
 int ALI_SCTRL_LINE_OUT_EN ; 
 int /*<<< orphan*/  ALI_VOLUME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,unsigned int) ; 
 void* FUNC10 (struct snd_ali*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_ali*) ; 
 scalar_t__ FUNC12 (struct snd_ali*) ; 

__attribute__((used)) static int FUNC13(struct snd_ali *codec)
{
	unsigned int legacy;
	unsigned char temp;
	struct pci_dev *pci_dev;

	FUNC1(codec->card->dev, "chip initializing ...\n");

	if (FUNC12(codec)) {
		FUNC2(codec->card->dev, "ali_chip_init: reset 5451 error.\n");
		return -1;
	}

	if (codec->revision == ALI_5451_V02) {
        	pci_dev = codec->pci_m1533;
		FUNC6(pci_dev, 0x59, &temp);
		temp |= 0x80;
		FUNC8(pci_dev, 0x59, temp);
	
		pci_dev = codec->pci_m7101;
		FUNC6(pci_dev, 0xb8, &temp);
		temp |= 0x20;
		FUNC8(pci_dev, 0xB8, temp);
	}

	FUNC7(codec->pci, 0x44, &legacy);
	legacy &= 0xff00ff00;
	legacy |= 0x000800aa;
	FUNC9(codec->pci, 0x44, legacy);

	FUNC5(0x80000001, FUNC0(codec, ALI_GLOBAL_CONTROL));
	FUNC5(0x00000000, FUNC0(codec, ALI_AINTEN));
	FUNC5(0xffffffff, FUNC0(codec, ALI_AINT));
	FUNC5(0x00000000, FUNC0(codec, ALI_VOLUME));
	FUNC4(0x10, 	 FUNC0(codec, ALI_MPUR2));

	codec->ac97_ext_id = FUNC10(codec, 0, AC97_EXTENDED_ID);
	codec->ac97_ext_status = FUNC10(codec, 0,
						    AC97_EXTENDED_STATUS);
	if (codec->spdif_support) {
		FUNC11(codec);
		codec->spdif_mask = 0x00000002;
	}

	codec->num_of_codecs = 1;

	/* secondary codec - modem */
	if (FUNC3(FUNC0(codec, ALI_SCTRL)) & ALI_SCTRL_CODEC2_READY) {
		codec->num_of_codecs++;
		FUNC5(FUNC3(FUNC0(codec, ALI_SCTRL)) |
		     (ALI_SCTRL_LINE_IN2 | ALI_SCTRL_GPIO_IN2 |
		      ALI_SCTRL_LINE_OUT_EN),
		     FUNC0(codec, ALI_SCTRL));
	}

	FUNC1(codec->card->dev, "chip initialize succeed.\n");
	return 0;

}
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
typedef  scalar_t__ u32 ;
struct snd_cs46xx {int /*<<< orphan*/  (* active_ctrl ) (struct snd_cs46xx*,int) ;TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned short ACCTL_CRW ; 
 unsigned short ACCTL_DCV ; 
 unsigned short ACCTL_ESYN ; 
 unsigned short ACCTL_RSTN ; 
 unsigned short ACCTL_TC ; 
 unsigned short ACCTL_VFRM ; 
 int ACSTS_VSTS ; 
 scalar_t__ BA0_ACCAD ; 
 scalar_t__ BA0_ACCDA ; 
 scalar_t__ BA0_ACCTL ; 
 scalar_t__ BA0_ACSDA ; 
 scalar_t__ BA0_ACSTS ; 
 int CS46XX_PRIMARY_CODEC_INDEX ; 
 int CS46XX_SECONDARY_CODEC_INDEX ; 
 scalar_t__ CS46XX_SECONDARY_CODEC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned short,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct snd_cs46xx*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_cs46xx*,scalar_t__,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_cs46xx*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_cs46xx*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static unsigned short FUNC10(struct snd_cs46xx *chip,
					    unsigned short reg,
					    int codec_index)
{
	int count;
	unsigned short result,tmp;
	u32 offset = 0;

	if (FUNC4(codec_index != CS46XX_PRIMARY_CODEC_INDEX &&
		       codec_index != CS46XX_SECONDARY_CODEC_INDEX))
		return 0xffff;

	chip->active_ctrl(chip, 1);

	if (codec_index == CS46XX_SECONDARY_CODEC_INDEX)
		offset = CS46XX_SECONDARY_CODEC_OFFSET;

	/*
	 *  1. Write ACCAD = Command Address Register = 46Ch for AC97 register address
	 *  2. Write ACCDA = Command Data Register = 470h    for data to write to AC97 
	 *  3. Write ACCTL = Control Register = 460h for initiating the write7---55
	 *  4. Read ACCTL = 460h, DCV should be reset by now and 460h = 17h
	 *  5. if DCV not cleared, break and return error
	 *  6. Read ACSTS = Status Register = 464h, check VSTS bit
	 */

	FUNC5(chip, BA0_ACSDA + offset);

	tmp = FUNC5(chip, BA0_ACCTL);
	if ((tmp & ACCTL_VFRM) == 0) {
		FUNC2(chip->card->dev, "ACCTL_VFRM not set 0x%x\n", tmp);
		FUNC6(chip, BA0_ACCTL, (tmp & (~ACCTL_ESYN)) | ACCTL_VFRM );
		FUNC3(50);
		tmp = FUNC5(chip, BA0_ACCTL + offset);
		FUNC6(chip, BA0_ACCTL, tmp | ACCTL_ESYN | ACCTL_VFRM );

	}

	/*
	 *  Setup the AC97 control registers on the CS461x to send the
	 *  appropriate command to the AC97 to perform the read.
	 *  ACCAD = Command Address Register = 46Ch
	 *  ACCDA = Command Data Register = 470h
	 *  ACCTL = Control Register = 460h
	 *  set DCV - will clear when process completed
	 *  set CRW - Read command
	 *  set VFRM - valid frame enabled
	 *  set ESYN - ASYNC generation enabled
	 *  set RSTN - ARST# inactive, AC97 codec not reset
	 */

	FUNC6(chip, BA0_ACCAD, reg);
	FUNC6(chip, BA0_ACCDA, 0);
	if (codec_index == CS46XX_PRIMARY_CODEC_INDEX) {
		FUNC6(chip, BA0_ACCTL,/* clear ACCTL_DCV */ ACCTL_CRW | 
				   ACCTL_VFRM | ACCTL_ESYN |
				   ACCTL_RSTN);
		FUNC6(chip, BA0_ACCTL, ACCTL_DCV | ACCTL_CRW |
				   ACCTL_VFRM | ACCTL_ESYN |
				   ACCTL_RSTN);
	} else {
		FUNC6(chip, BA0_ACCTL, ACCTL_DCV | ACCTL_TC |
				   ACCTL_CRW | ACCTL_VFRM | ACCTL_ESYN |
				   ACCTL_RSTN);
	}

	/*
	 *  Wait for the read to occur.
	 */
	for (count = 0; count < 1000; count++) {
		/*
		 *  First, we want to wait for a short time.
	 	 */
		FUNC9(10);
		/*
		 *  Now, check to see if the read has completed.
		 *  ACCTL = 460h, DCV should be reset by now and 460h = 17h
		 */
		if (!(FUNC5(chip, BA0_ACCTL) & ACCTL_DCV))
			goto ok1;
	}

	FUNC1(chip->card->dev,
		"AC'97 read problem (ACCTL_DCV), reg = 0x%x\n", reg);
	result = 0xffff;
	goto end;
	
 ok1:
	/*
	 *  Wait for the valid status bit to go active.
	 */
	for (count = 0; count < 100; count++) {
		/*
		 *  Read the AC97 status register.
		 *  ACSTS = Status Register = 464h
		 *  VSTS - Valid Status
		 */
		if (FUNC5(chip, BA0_ACSTS + offset) & ACSTS_VSTS)
			goto ok2;
		FUNC9(10);
	}
	
	FUNC1(chip->card->dev,
		"AC'97 read problem (ACSTS_VSTS), codec_index %d, reg = 0x%x\n",
		codec_index, reg);
	result = 0xffff;
	goto end;

 ok2:
	/*
	 *  Read the data returned from the AC97 register.
	 *  ACSDA = Status Data Register = 474h
	 */
#if 0
	dev_dbg(chip->card->dev,
		"e) reg = 0x%x, val = 0x%x, BA0_ACCAD = 0x%x\n", reg,
			snd_cs46xx_peekBA0(chip, BA0_ACSDA),
			snd_cs46xx_peekBA0(chip, BA0_ACCAD));
#endif

	//snd_cs46xx_peekBA0(chip, BA0_ACCAD);
	result = FUNC5(chip, BA0_ACSDA + offset);
 end:
	chip->active_ctrl(chip, -1);
	return result;
}
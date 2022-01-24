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
struct es1938 {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ESSSB_IREG_AUDIO2MODE ; 
 int /*<<< orphan*/  ESS_CMD_DMATYPE ; 
 int /*<<< orphan*/  ESS_CMD_DRQCONTROL ; 
 int /*<<< orphan*/  ESS_CMD_ENABLEAUDIO1 ; 
 int /*<<< orphan*/  ESS_CMD_ENABLEEXT ; 
 int /*<<< orphan*/  ESS_CMD_IRQCONTROL ; 
 int /*<<< orphan*/  READDATA ; 
 int /*<<< orphan*/  RESET ; 
 int RESET_LOOP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct es1938*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct es1938*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct es1938*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct es1938*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct es1938 *chip)
{
	int i;

	FUNC3(3, FUNC0(chip, RESET));
	FUNC2(FUNC0(chip, RESET));
	FUNC3(0, FUNC0(chip, RESET));
	for (i = 0; i < RESET_LOOP_TIMEOUT; i++) {
		if (FUNC2(FUNC0(chip, STATUS)) & 0x80) {
			if (FUNC2(FUNC0(chip, READDATA)) == 0xaa)
				goto __next;
		}
	}
	FUNC1(chip->card->dev, "ESS Solo-1 reset failed\n");

     __next:
	FUNC7(chip, ESS_CMD_ENABLEEXT);

	/* Demand transfer DMA: 4 bytes per DMA request */
	FUNC6(chip, ESS_CMD_DMATYPE, 2);

	/* Change behaviour of register A1
	   4x oversampling
	   2nd channel DAC asynchronous */                                                      
	FUNC5(chip, ESSSB_IREG_AUDIO2MODE, 0x32);
	/* enable/select DMA channel and IRQ channel */
	FUNC4(chip, ESS_CMD_IRQCONTROL, 0xf0, 0x50);
	FUNC4(chip, ESS_CMD_DRQCONTROL, 0xf0, 0x50);
	FUNC7(chip, ESS_CMD_ENABLEAUDIO1);
	/* Set spatializer parameters to recommended values */
	FUNC5(chip, 0x54, 0x8f);
	FUNC5(chip, 0x56, 0x95);
	FUNC5(chip, 0x58, 0x94);
	FUNC5(chip, 0x5a, 0x80);
}
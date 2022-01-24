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
typedef  int u8 ;
typedef  int u32 ;
struct nm256 {int /*<<< orphan*/  reg_lock; TYPE_1__* card; scalar_t__ badintrcount; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct nm256*,int) ; 
 int NM2_MISC_INT_1 ; 
 int NM2_MISC_INT_2 ; 
 int NM2_PLAYBACK_INT ; 
 int NM2_RECORD_INT ; 
 int /*<<< orphan*/  NM_INT_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct nm256*) ; 
 int /*<<< orphan*/  FUNC3 (struct nm256*) ; 
 int /*<<< orphan*/  FUNC4 (struct nm256*) ; 
 int FUNC5 (struct nm256*,int) ; 
 int FUNC6 (struct nm256*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nm256*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC10(int irq, void *dev_id)
{
	struct nm256 *chip = dev_id;
	u32 status;
	u8 cbyte;

	status = FUNC6(chip, NM_INT_REG);

	/* Not ours. */
	if (status == 0)
		return FUNC3(chip);

	chip->badintrcount = 0;

	/* Rather boring; check for individual interrupts and process them. */

	FUNC8(&chip->reg_lock);
	if (status & NM2_PLAYBACK_INT) {
		status &= ~NM2_PLAYBACK_INT;
		FUNC0(chip, NM2_PLAYBACK_INT);
		FUNC4(chip);
	}

	if (status & NM2_RECORD_INT) {
		status &= ~NM2_RECORD_INT;
		FUNC0(chip, NM2_RECORD_INT);
		FUNC2(chip);
	}

	if (status & NM2_MISC_INT_1) {
		status &= ~NM2_MISC_INT_1;
		FUNC0(chip, NM2_MISC_INT_1);
		FUNC1(chip->card->dev, "NM256: Got misc interrupt #1\n");
		cbyte = FUNC5(chip, 0x400);
		FUNC7(chip, 0x400, cbyte | 2);
	}

	if (status & NM2_MISC_INT_2) {
		status &= ~NM2_MISC_INT_2;
		FUNC0(chip, NM2_MISC_INT_2);
		FUNC1(chip->card->dev, "NM256: Got misc interrupt #2\n");
		cbyte = FUNC5(chip, 0x400);
		FUNC7(chip, 0x400, cbyte & ~2);
	}

	/* Unknown interrupt. */
	if (status) {
		FUNC1(chip->card->dev,
			"NM256: Fire in the hole! Unknown status 0x%x\n",
			   status);
		/* Pray. */
		FUNC0(chip, status);
	}

	FUNC9(&chip->reg_lock);
	return IRQ_HANDLED;
}
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
struct via82xx {unsigned char old_legacy; unsigned char old_legacy_cfg; scalar_t__ revision; int mpu_port_saved; unsigned char legacy_saved; unsigned char legacy_cfg_saved; int /*<<< orphan*/  pci; TYPE_1__* card; int /*<<< orphan*/  rmidi; int /*<<< orphan*/ * mpu_res; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPU401_HW_VIA686A ; 
 int MPU401_INFO_INTEGRATED ; 
 int MPU401_INFO_IRQ_HOOK ; 
 int /*<<< orphan*/  VIA_FUNC_ENABLE ; 
 unsigned char VIA_FUNC_ENABLE_GAME ; 
 unsigned char VIA_FUNC_ENABLE_MIDI ; 
 unsigned char VIA_FUNC_MIDI_IRQMASK ; 
 unsigned char VIA_FUNC_MIDI_PNP ; 
 int /*<<< orphan*/  VIA_PNP_CONTROL ; 
 scalar_t__ VIA_REV_686_H ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int mpu_port ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct via82xx*,unsigned char*) ; 

__attribute__((used)) static int FUNC7(struct via82xx *chip)
{
	unsigned char legacy, legacy_cfg;
	int rev_h = 0;

	legacy = chip->old_legacy;
	legacy_cfg = chip->old_legacy_cfg;
	legacy |= VIA_FUNC_MIDI_IRQMASK;	/* FIXME: correct? (disable MIDI) */
	legacy &= ~VIA_FUNC_ENABLE_GAME;	/* disable joystick */
	if (chip->revision >= VIA_REV_686_H) {
		rev_h = 1;
		if (mpu_port >= 0x200) {	/* force MIDI */
			mpu_port &= 0xfffc;
			FUNC3(chip->pci, 0x18, mpu_port | 0x01);
#ifdef CONFIG_PM_SLEEP
			chip->mpu_port_saved = mpu_port;
#endif
		} else {
			mpu_port = FUNC1(chip->pci, 2);
		}
	} else {
		switch (mpu_port) {	/* force MIDI */
		case 0x300:
		case 0x310:
		case 0x320:
		case 0x330:
			legacy_cfg &= ~(3 << 2);
			legacy_cfg |= (mpu_port & 0x0030) >> 2;
			break;
		default:			/* no, use BIOS settings */
			if (legacy & VIA_FUNC_ENABLE_MIDI)
				mpu_port = 0x300 + ((legacy_cfg & 0x000c) << 2);
			break;
		}
	}
	if (mpu_port >= 0x200 &&
	    (chip->mpu_res = FUNC4(mpu_port, 2, "VIA82xx MPU401"))
	    != NULL) {
		if (rev_h)
			legacy |= VIA_FUNC_MIDI_PNP;	/* enable PCI I/O 2 */
		legacy |= VIA_FUNC_ENABLE_MIDI;
	} else {
		if (rev_h)
			legacy &= ~VIA_FUNC_MIDI_PNP;	/* disable PCI I/O 2 */
		legacy &= ~VIA_FUNC_ENABLE_MIDI;
		mpu_port = 0;
	}

	FUNC2(chip->pci, VIA_FUNC_ENABLE, legacy);
	FUNC2(chip->pci, VIA_PNP_CONTROL, legacy_cfg);
	if (chip->mpu_res) {
		if (FUNC5(chip->card, 0, MPU401_HW_VIA686A,
					mpu_port, MPU401_INFO_INTEGRATED |
					MPU401_INFO_IRQ_HOOK, -1,
					&chip->rmidi) < 0) {
			FUNC0(chip->card->dev,
				 "unable to initialize MPU-401 at 0x%lx, skipping\n",
				 mpu_port);
			legacy &= ~VIA_FUNC_ENABLE_MIDI;
		} else {
			legacy &= ~VIA_FUNC_MIDI_IRQMASK;	/* enable MIDI interrupt */
		}
		FUNC2(chip->pci, VIA_FUNC_ENABLE, legacy);
	}

	FUNC6(chip, &legacy);

#ifdef CONFIG_PM_SLEEP
	chip->legacy_saved = legacy;
	chip->legacy_cfg_saved = legacy_cfg;
#endif

	return 0;
}
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
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ area; } ;
struct snd_ymfpci {scalar_t__ irq; int /*<<< orphan*/  controller_microcode; int /*<<< orphan*/  dsp_microcode; int /*<<< orphan*/  pci; int /*<<< orphan*/  old_legacy_ctrl; scalar_t__ res_reg_area; TYPE_1__ work_ptr; int /*<<< orphan*/  reg_area_virt; scalar_t__ fm_res; scalar_t__ mpu_res; struct snd_ymfpci* saved_regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  YDSXGR_BUF441OUTVOL ; 
 int /*<<< orphan*/  YDSXGR_EFFCTRLBASE ; 
 int /*<<< orphan*/  YDSXGR_GLOBALCTRL ; 
 int /*<<< orphan*/  YDSXGR_LEGACYOUTVOL ; 
 int /*<<< orphan*/  YDSXGR_NATIVEDACOUTVOL ; 
 int /*<<< orphan*/  YDSXGR_PLAYCTRLBASE ; 
 int /*<<< orphan*/  YDSXGR_RECCTRLBASE ; 
 int /*<<< orphan*/  YDSXGR_STATUS ; 
 int /*<<< orphan*/  YDSXGR_WORKBASE ; 
 int /*<<< orphan*/  YDSXGR_WORKSIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct snd_ymfpci*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_ymfpci*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_ymfpci*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_ymfpci*) ; 
 int FUNC13 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_ymfpci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct snd_ymfpci *chip)
{
	u16 ctrl;

	if (FUNC8(!chip))
		return -EINVAL;

	if (chip->res_reg_area) {	/* don't touch busy hardware */
		FUNC14(chip, YDSXGR_NATIVEDACOUTVOL, 0);
		FUNC14(chip, YDSXGR_BUF441OUTVOL, 0);
		FUNC14(chip, YDSXGR_LEGACYOUTVOL, 0);
		FUNC14(chip, YDSXGR_STATUS, ~0);
		FUNC11(chip);
		FUNC14(chip, YDSXGR_PLAYCTRLBASE, 0);
		FUNC14(chip, YDSXGR_RECCTRLBASE, 0);
		FUNC14(chip, YDSXGR_EFFCTRLBASE, 0);
		FUNC14(chip, YDSXGR_WORKBASE, 0);
		FUNC14(chip, YDSXGR_WORKSIZE, 0);
		ctrl = FUNC13(chip, YDSXGR_GLOBALCTRL);
		FUNC15(chip, YDSXGR_GLOBALCTRL, ctrl & ~0x0007);
	}

	FUNC10(chip);

	/* Set PCI device to D3 state */
#if 0
	/* FIXME: temporarily disabled, otherwise we cannot fire up
	 * the chip again unless reboot.  ACPI bug?
	 */
	pci_set_power_state(chip->pci, PCI_D3hot);
#endif

#ifdef CONFIG_PM_SLEEP
	kfree(chip->saved_regs);
#endif
	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);
	FUNC6(chip->mpu_res);
	FUNC6(chip->fm_res);
	FUNC12(chip);
	FUNC1(chip->reg_area_virt);
	if (chip->work_ptr.area)
		FUNC9(&chip->work_ptr);
	
	FUNC6(chip->res_reg_area);

	FUNC5(chip->pci, 0x40, chip->old_legacy_ctrl);
	
	FUNC3(chip->pci);
	FUNC7(chip->dsp_microcode);
	FUNC7(chip->controller_microcode);
	FUNC2(chip);
	return 0;
}
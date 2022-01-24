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
typedef  int u32 ;
struct trn_conf {int /*<<< orphan*/  vm_pgt_phys; int /*<<< orphan*/  member_0; } ;
struct hw {scalar_t__ model; } ;
struct daio_conf {int /*<<< orphan*/  msr; int /*<<< orphan*/  member_0; } ;
struct dac_conf {int /*<<< orphan*/  msr; int /*<<< orphan*/  member_0; } ;
struct card_conf {int /*<<< orphan*/  msr; int /*<<< orphan*/  vm_pgt_phys; int /*<<< orphan*/  rsr; } ;
struct adc_conf {scalar_t__ mic20db; int /*<<< orphan*/  input; int /*<<< orphan*/  msr; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_LINEIN ; 
 scalar_t__ CTSB1270 ; 
 int /*<<< orphan*/  GCTL_DBP ; 
 int /*<<< orphan*/  GCTL_DPC ; 
 int /*<<< orphan*/  GCTL_FBP ; 
 int /*<<< orphan*/  GCTL_TBP ; 
 int /*<<< orphan*/  GIE ; 
 int /*<<< orphan*/  GLOBAL_CNTL_GCTL ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 int /*<<< orphan*/  MIXER_AR_ENABLE ; 
 int /*<<< orphan*/  SRC_IP ; 
 int /*<<< orphan*/  SRC_MCTL ; 
 int FUNC0 (struct hw*,struct adc_conf*) ; 
 int FUNC1 (struct hw*) ; 
 int FUNC2 (struct hw*) ; 
 int FUNC3 (struct hw*,struct dac_conf*) ; 
 int FUNC4 (struct hw*,struct daio_conf*) ; 
 int FUNC5 (struct hw*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct hw*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hw*,struct trn_conf*) ; 
 int /*<<< orphan*/  FUNC8 (struct hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct hw *hw, struct card_conf *info)
{
	int err;
	unsigned int gctl;
	u32 data = 0;
	struct dac_conf dac_info = {0};
	struct adc_conf adc_info = {0};
	struct daio_conf daio_info = {0};
	struct trn_conf trn_info = {0};

	/* Get PCI io port/memory base address and
	 * do 20kx core switch if needed. */
	err = FUNC2(hw);
	if (err)
		return err;

	/* PLL init */
	err = FUNC5(hw, info->rsr);
	if (err < 0)
		return err;

	/* kick off auto-init */
	err = FUNC1(hw);
	if (err < 0)
		return err;

	gctl = FUNC6(hw, GLOBAL_CNTL_GCTL);
	FUNC9(&gctl, GCTL_DBP, 1);
	FUNC9(&gctl, GCTL_TBP, 1);
	FUNC9(&gctl, GCTL_FBP, 1);
	FUNC9(&gctl, GCTL_DPC, 0);
	FUNC8(hw, GLOBAL_CNTL_GCTL, gctl);

	/* Reset all global pending interrupts */
	FUNC8(hw, GIE, 0);
	/* Reset all SRC pending interrupts */
	FUNC8(hw, SRC_IP, 0);

	if (hw->model != CTSB1270) {
		/* TODO: detect the card ID and configure GPIO accordingly. */
		/* Configures GPIO (0xD802 0x98028) */
		/*hw_write_20kx(hw, GPIO_CTRL, 0x7F07);*/
		/* Configures GPIO (SB0880) */
		/*hw_write_20kx(hw, GPIO_CTRL, 0xFF07);*/
		FUNC8(hw, GPIO_CTRL, 0xD802);
	} else {
		FUNC8(hw, GPIO_CTRL, 0x9E5F);
	}
	/* Enable audio ring */
	FUNC8(hw, MIXER_AR_ENABLE, 0x01);

	trn_info.vm_pgt_phys = info->vm_pgt_phys;
	err = FUNC7(hw, &trn_info);
	if (err < 0)
		return err;

	daio_info.msr = info->msr;
	err = FUNC4(hw, &daio_info);
	if (err < 0)
		return err;

	dac_info.msr = info->msr;
	err = FUNC3(hw, &dac_info);
	if (err < 0)
		return err;

	adc_info.msr = info->msr;
	adc_info.input = ADC_LINEIN;
	adc_info.mic20db = 0;
	err = FUNC0(hw, &adc_info);
	if (err < 0)
		return err;

	data = FUNC6(hw, SRC_MCTL);
	data |= 0x1; /* Enables input from the audio ring */
	FUNC8(hw, SRC_MCTL, data);

	return 0;
}
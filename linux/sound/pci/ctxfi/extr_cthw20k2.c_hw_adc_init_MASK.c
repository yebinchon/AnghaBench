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
typedef  int u32 ;
struct hw {scalar_t__ model; TYPE_1__* card; } ;
struct adc_conf {int msr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_LINEIN ; 
 scalar_t__ CTSB1270 ; 
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 int /*<<< orphan*/  GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WM8775_IC ; 
 int /*<<< orphan*/  WM8775_MMC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hw*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static int FUNC12(struct hw *hw, const struct adc_conf *info)
{
	int err;
	u32 data, ctl;

	/*  Set ADC reset bit as output */
	data = FUNC7(hw, GPIO_CTRL);
	data |= (0x1 << 15);
	FUNC9(hw, GPIO_CTRL, data);

	/* Initialize I2C */
	err = FUNC3(hw, 0x1A, 1, 1);
	if (err < 0) {
		FUNC2(hw->card->dev, "Failure to acquire I2C!!!\n");
		goto error;
	}

	/* Reset the ADC (reset is active low). */
	data = FUNC7(hw, GPIO_DATA);
	data &= ~(0x1 << 15);
	FUNC9(hw, GPIO_DATA, data);

	if (hw->model == CTSB1270) {
		/* Set up the PCM4220 ADC on Titanium HD */
		data &= ~0x0C;
		if (1 == info->msr)
			data |= 0x00; /* Single Speed Mode 32-50kHz */
		else if (2 == info->msr)
			data |= 0x08; /* Double Speed Mode 50-108kHz */
		else
			data |= 0x04; /* Quad Speed Mode 108kHz-216kHz */
		FUNC9(hw, GPIO_DATA, data);
	}

	FUNC11(10000, 11000);
	/* Return the ADC to normal operation. */
	data |= (0x1 << 15);
	FUNC9(hw, GPIO_DATA, data);
	FUNC10(50);

	/* I2C write to register offset 0x0B to set ADC LRCLK polarity */
	/* invert bit, interface format to I2S, word length to 24-bit, */
	/* enable ADC high pass filter. Fixes bug 5323?		*/
	FUNC5(hw, FUNC0(WM8775_IC, 0x26),
			 FUNC1(0x26));

	/* Set the master mode (256fs) */
	if (1 == info->msr) {
		/* slave mode, 128x oversampling 256fs */
		FUNC5(hw, FUNC0(WM8775_MMC, 0x02),
						FUNC1(0x02));
	} else if ((2 == info->msr) || (4 == info->msr)) {
		/* slave mode, 64x oversampling, 256fs */
		FUNC5(hw, FUNC0(WM8775_MMC, 0x0A),
						FUNC1(0x0A));
	} else {
		FUNC2(hw->card->dev,
			  "Invalid master sampling rate (msr %d)!!!\n",
			  info->msr);
		err = -EINVAL;
		goto error;
	}

	if (hw->model != CTSB1270) {
		/* Configure GPIO bit 14 change to line-in/mic-in */
		ctl = FUNC7(hw, GPIO_CTRL);
		ctl |= 0x1 << 14;
		FUNC9(hw, GPIO_CTRL, ctl);
		FUNC6(hw, ADC_LINEIN);
	} else {
		FUNC8(hw, 0, 0);
	}

	return 0;
error:
	FUNC4(hw);
	return err;
}
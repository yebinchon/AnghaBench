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
struct wm2000_priv {scalar_t__ anc_mode; int anc_download_size; int /*<<< orphan*/  supplies; scalar_t__ speech_clarity; int /*<<< orphan*/  regmap; int /*<<< orphan*/  anc_download; int /*<<< orphan*/  mclk; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ANC_ACTIVE ; 
 scalar_t__ ANC_OFF ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int WM2000_ANC_ENG_CLR ; 
 int /*<<< orphan*/  WM2000_ANC_ENG_IDLE ; 
 int WM2000_ANC_ENG_SET ; 
 int WM2000_ANC_INT_N_CLR ; 
 int WM2000_MCLK_DIV2_ENA_CLR ; 
 int WM2000_MCLK_DIV2_ENA_SET ; 
 int WM2000_MODE_ANA_SEQ_INCLUDE ; 
 int WM2000_MODE_MOUSE_ENABLE ; 
 int WM2000_MODE_THERMAL_ENABLE ; 
 int /*<<< orphan*/  WM2000_NUM_SUPPLIES ; 
 int WM2000_RAM_SET ; 
 int /*<<< orphan*/  WM2000_REG_ANA_VMID_PU_TIME ; 
 int /*<<< orphan*/  WM2000_REG_ANC_STAT ; 
 int /*<<< orphan*/  WM2000_REG_SPEECH_CLARITY ; 
 int /*<<< orphan*/  WM2000_REG_SYS_CTL2 ; 
 int /*<<< orphan*/  WM2000_REG_SYS_MODE_CNTRL ; 
 int /*<<< orphan*/  WM2000_REG_SYS_START0 ; 
 int /*<<< orphan*/  WM2000_REG_SYS_START1 ; 
 int /*<<< orphan*/  WM2000_REG_SYS_STATUS ; 
 unsigned int WM2000_SPEECH_CLARITY ; 
 int /*<<< orphan*/  WM2000_STATUS_BOOT_COMPLETE ; 
 int /*<<< orphan*/  WM2000_STATUS_MOUSE_ACTIVE ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct wm2000_priv* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *i2c, int analogue)
{
	struct wm2000_priv *wm2000 = FUNC4(&i2c->dev);
	unsigned long rate;
	unsigned int val;
	int ret;

	if (FUNC0(wm2000->anc_mode != ANC_OFF))
		return -EINVAL;

	FUNC2(&i2c->dev, "Beginning power up\n");

	ret = FUNC8(WM2000_NUM_SUPPLIES, wm2000->supplies);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	rate = FUNC1(wm2000->mclk);
	if (rate <= 13500000) {
		FUNC2(&i2c->dev, "Disabling MCLK divider\n");
		FUNC10(i2c, WM2000_REG_SYS_CTL2,
			     WM2000_MCLK_DIV2_ENA_CLR);
	} else {
		FUNC2(&i2c->dev, "Enabling MCLK divider\n");
		FUNC10(i2c, WM2000_REG_SYS_CTL2,
			     WM2000_MCLK_DIV2_ENA_SET);
	}

	FUNC10(i2c, WM2000_REG_SYS_CTL2, WM2000_ANC_ENG_CLR);
	FUNC10(i2c, WM2000_REG_SYS_CTL2, WM2000_ANC_ENG_SET);

	/* Wait for ANC engine to become ready */
	if (!FUNC9(i2c, WM2000_REG_ANC_STAT,
			     WM2000_ANC_ENG_IDLE)) {
		FUNC3(&i2c->dev, "ANC engine failed to reset\n");
		FUNC7(WM2000_NUM_SUPPLIES, wm2000->supplies);
		return -ETIMEDOUT;
	}

	if (!FUNC9(i2c, WM2000_REG_SYS_STATUS,
			     WM2000_STATUS_BOOT_COMPLETE)) {
		FUNC3(&i2c->dev, "ANC engine failed to initialise\n");
		FUNC7(WM2000_NUM_SUPPLIES, wm2000->supplies);
		return -ETIMEDOUT;
	}

	FUNC10(i2c, WM2000_REG_SYS_CTL2, WM2000_RAM_SET);

	/* Open code download of the data since it is the only bulk
	 * write we do. */
	FUNC2(&i2c->dev, "Downloading %d bytes\n",
		wm2000->anc_download_size - 2);

	ret = FUNC5(i2c, wm2000->anc_download,
			      wm2000->anc_download_size);
	if (ret < 0) {
		FUNC3(&i2c->dev, "i2c_transfer() failed: %d\n", ret);
		FUNC7(WM2000_NUM_SUPPLIES, wm2000->supplies);
		return ret;
	}
	if (ret != wm2000->anc_download_size) {
		FUNC3(&i2c->dev, "i2c_transfer() failed, %d != %d\n",
			ret, wm2000->anc_download_size);
		FUNC7(WM2000_NUM_SUPPLIES, wm2000->supplies);
		return -EIO;
	}

	FUNC2(&i2c->dev, "Download complete\n");

	if (analogue) {
		FUNC10(i2c, WM2000_REG_ANA_VMID_PU_TIME, 248 / 4);

		FUNC10(i2c, WM2000_REG_SYS_MODE_CNTRL,
			     WM2000_MODE_ANA_SEQ_INCLUDE |
			     WM2000_MODE_MOUSE_ENABLE |
			     WM2000_MODE_THERMAL_ENABLE);
	} else {
		FUNC10(i2c, WM2000_REG_SYS_MODE_CNTRL,
			     WM2000_MODE_MOUSE_ENABLE |
			     WM2000_MODE_THERMAL_ENABLE);
	}

	ret = FUNC6(wm2000->regmap, WM2000_REG_SPEECH_CLARITY, &val);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Unable to read Speech Clarity: %d\n", ret);
		FUNC7(WM2000_NUM_SUPPLIES, wm2000->supplies);
		return ret;
	}
	if (wm2000->speech_clarity)
		val |= WM2000_SPEECH_CLARITY;
	else
		val &= ~WM2000_SPEECH_CLARITY;
	FUNC10(i2c, WM2000_REG_SPEECH_CLARITY, val);

	FUNC10(i2c, WM2000_REG_SYS_START0, 0x33);
	FUNC10(i2c, WM2000_REG_SYS_START1, 0x02);

	FUNC10(i2c, WM2000_REG_SYS_CTL2, WM2000_ANC_INT_N_CLR);

	if (!FUNC9(i2c, WM2000_REG_SYS_STATUS,
			     WM2000_STATUS_MOUSE_ACTIVE)) {
		FUNC3(&i2c->dev, "Timed out waiting for device\n");
		FUNC7(WM2000_NUM_SUPPLIES, wm2000->supplies);
		return -ETIMEDOUT;
	}

	FUNC2(&i2c->dev, "ANC active\n");
	if (analogue)
		FUNC2(&i2c->dev, "Analogue active\n");
	wm2000->anc_mode = ANC_ACTIVE;

	return 0;
}
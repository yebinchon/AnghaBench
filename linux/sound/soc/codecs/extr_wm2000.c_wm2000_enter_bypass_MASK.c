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
struct wm2000_priv {scalar_t__ anc_mode; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ANC_ACTIVE ; 
 scalar_t__ ANC_BYPASS ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WM2000_ANC_ENG_IDLE ; 
 int WM2000_MODE_ANA_SEQ_INCLUDE ; 
 int WM2000_MODE_BYPASS_ENTRY ; 
 int WM2000_MODE_THERMAL_ENABLE ; 
 int WM2000_RAM_CLR ; 
 int /*<<< orphan*/  WM2000_REG_ANC_STAT ; 
 int /*<<< orphan*/  WM2000_REG_SYS_CTL1 ; 
 int /*<<< orphan*/  WM2000_REG_SYS_CTL2 ; 
 int /*<<< orphan*/  WM2000_REG_SYS_MODE_CNTRL ; 
 int /*<<< orphan*/  WM2000_REG_SYS_STATUS ; 
 int /*<<< orphan*/  WM2000_STATUS_ANC_DISABLED ; 
 int WM2000_SYS_STBY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct wm2000_priv* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *i2c, int analogue)
{
	struct wm2000_priv *wm2000 = FUNC3(&i2c->dev);

	if (FUNC0(wm2000->anc_mode != ANC_ACTIVE))
		return -EINVAL;

	if (analogue) {
		FUNC5(i2c, WM2000_REG_SYS_MODE_CNTRL,
			     WM2000_MODE_ANA_SEQ_INCLUDE |
			     WM2000_MODE_THERMAL_ENABLE |
			     WM2000_MODE_BYPASS_ENTRY);
	} else {
		FUNC5(i2c, WM2000_REG_SYS_MODE_CNTRL,
			     WM2000_MODE_THERMAL_ENABLE |
			     WM2000_MODE_BYPASS_ENTRY);
	}

	if (!FUNC4(i2c, WM2000_REG_SYS_STATUS,
			     WM2000_STATUS_ANC_DISABLED)) {
		FUNC2(&i2c->dev, "Timeout waiting for ANC disable\n");
		return -ETIMEDOUT;
	}

	if (!FUNC4(i2c, WM2000_REG_ANC_STAT,
			     WM2000_ANC_ENG_IDLE)) {
		FUNC2(&i2c->dev, "Timeout waiting for ANC engine idle\n");
		return -ETIMEDOUT;
	}

	FUNC5(i2c, WM2000_REG_SYS_CTL1, WM2000_SYS_STBY);
	FUNC5(i2c, WM2000_REG_SYS_CTL2, WM2000_RAM_CLR);

	wm2000->anc_mode = ANC_BYPASS;
	FUNC1(&i2c->dev, "bypass enabled\n");

	return 0;
}
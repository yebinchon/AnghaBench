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
struct wm2000_priv {int /*<<< orphan*/  anc_mode; int /*<<< orphan*/  supplies; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANC_OFF ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  WM2000_ANC_ENG_IDLE ; 
 int WM2000_MODE_ANA_SEQ_INCLUDE ; 
 int WM2000_MODE_POWER_DOWN ; 
 int /*<<< orphan*/  WM2000_NUM_SUPPLIES ; 
 int /*<<< orphan*/  WM2000_REG_ANA_VMID_PD_TIME ; 
 int /*<<< orphan*/  WM2000_REG_ANC_STAT ; 
 int /*<<< orphan*/  WM2000_REG_SYS_MODE_CNTRL ; 
 int /*<<< orphan*/  WM2000_REG_SYS_STATUS ; 
 int /*<<< orphan*/  WM2000_STATUS_POWER_DOWN_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct wm2000_priv* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *i2c, int analogue)
{
	struct wm2000_priv *wm2000 = FUNC2(&i2c->dev);

	if (analogue) {
		FUNC5(i2c, WM2000_REG_ANA_VMID_PD_TIME, 248 / 4);
		FUNC5(i2c, WM2000_REG_SYS_MODE_CNTRL,
			     WM2000_MODE_ANA_SEQ_INCLUDE |
			     WM2000_MODE_POWER_DOWN);
	} else {
		FUNC5(i2c, WM2000_REG_SYS_MODE_CNTRL,
			     WM2000_MODE_POWER_DOWN);
	}

	if (!FUNC4(i2c, WM2000_REG_SYS_STATUS,
			     WM2000_STATUS_POWER_DOWN_COMPLETE)) {
		FUNC1(&i2c->dev, "Timeout waiting for ANC power down\n");
		return -ETIMEDOUT;
	}

	if (!FUNC4(i2c, WM2000_REG_ANC_STAT,
			     WM2000_ANC_ENG_IDLE)) {
		FUNC1(&i2c->dev, "Timeout waiting for ANC engine idle\n");
		return -ETIMEDOUT;
	}

	FUNC3(WM2000_NUM_SUPPLIES, wm2000->supplies);

	FUNC0(&i2c->dev, "powered off\n");
	wm2000->anc_mode = ANC_OFF;

	return 0;
}
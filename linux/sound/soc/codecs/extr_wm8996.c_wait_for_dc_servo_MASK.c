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
typedef  int u16 ;
struct wm8996_priv {int /*<<< orphan*/  dcs_done; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct i2c_client {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8996_DC_SERVO_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct wm8996_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct snd_soc_component *component, u16 mask)
{
	struct i2c_client *i2c = FUNC7(component->dev);
	struct wm8996_priv *wm8996 = FUNC4(component);
	int ret;
	unsigned long timeout = 200;

	FUNC6(component, WM8996_DC_SERVO_2, mask);

	/* Use the interrupt if possible */
	do {
		if (i2c->irq) {
			timeout = FUNC8(&wm8996->dcs_done,
							      FUNC2(200));
			if (timeout == 0)
				FUNC1(component->dev, "DC servo timed out\n");

		} else {
			FUNC3(1);
			timeout--;
		}

		ret = FUNC5(component, WM8996_DC_SERVO_2);
		FUNC0(component->dev, "DC servo state: %x\n", ret);
	} while (timeout && ret & mask);

	if (timeout == 0)
		FUNC1(component->dev, "DC servo timed out for %x\n", mask);
	else
		FUNC0(component->dev, "DC servo complete for %x\n", mask);
}
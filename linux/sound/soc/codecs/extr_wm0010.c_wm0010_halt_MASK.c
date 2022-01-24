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
struct wm0010_priv {int state; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  core_supplies; int /*<<< orphan*/  dbvdd; int /*<<< orphan*/  gpio_reset_value; int /*<<< orphan*/  gpio_reset; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum wm0010_state { ____Placeholder_wm0010_state } wm0010_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  WM0010_BOOTROM 132 
#define  WM0010_FIRMWARE 131 
#define  WM0010_OUT_OF_RESET 130 
#define  WM0010_POWER_OFF 129 
#define  WM0010_STAGE2 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct wm0010_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct snd_soc_component *component)
{
	struct wm0010_priv *wm0010 = FUNC4(component);
	unsigned long flags;
	enum wm0010_state state;

	/* Fetch the wm0010 state */
	FUNC5(&wm0010->irq_lock, flags);
	state = wm0010->state;
	FUNC6(&wm0010->irq_lock, flags);

	switch (state) {
	case WM0010_POWER_OFF:
		/* If there's nothing to do, bail out */
		return;
	case WM0010_OUT_OF_RESET:
	case WM0010_BOOTROM:
	case WM0010_STAGE2:
	case WM0010_FIRMWARE:
		/* Remember to put chip back into reset */
		FUNC1(wm0010->gpio_reset,
					wm0010->gpio_reset_value);
		/* Disable the regulators */
		FUNC3(wm0010->dbvdd);
		FUNC2(FUNC0(wm0010->core_supplies),
				       wm0010->core_supplies);
		break;
	}

	FUNC5(&wm0010->irq_lock, flags);
	wm0010->state = WM0010_POWER_OFF;
	FUNC6(&wm0010->irq_lock, flags);
}
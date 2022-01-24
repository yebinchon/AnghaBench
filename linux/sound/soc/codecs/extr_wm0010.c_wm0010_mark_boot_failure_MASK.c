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
struct wm0010_priv {int state; int boot_failed; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_lock; } ;
typedef  enum wm0010_state { ____Placeholder_wm0010_state } wm0010_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct wm0010_priv *wm0010)
{
	enum wm0010_state state;
	unsigned long flags;

	FUNC1(&wm0010->irq_lock, flags);
	state = wm0010->state;
	FUNC2(&wm0010->irq_lock, flags);

	FUNC0(wm0010->dev, "Failed to transition from `%s' state to `%s' state\n",
		FUNC3(state), FUNC3(state + 1));

	wm0010->boot_failed = true;
}
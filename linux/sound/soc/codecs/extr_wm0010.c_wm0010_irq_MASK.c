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
struct wm0010_priv {int state; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  boot_completion; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
#define  WM0010_BOOTROM 130 
#define  WM0010_OUT_OF_RESET 129 
#define  WM0010_STAGE2 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct wm0010_priv *wm0010 = data;

	switch (wm0010->state) {
	case WM0010_OUT_OF_RESET:
	case WM0010_BOOTROM:
	case WM0010_STAGE2:
		FUNC1(&wm0010->irq_lock);
		FUNC0(&wm0010->boot_completion);
		FUNC2(&wm0010->irq_lock);
		return IRQ_HANDLED;
	default:
		return IRQ_NONE;
	}

	return IRQ_NONE;
}
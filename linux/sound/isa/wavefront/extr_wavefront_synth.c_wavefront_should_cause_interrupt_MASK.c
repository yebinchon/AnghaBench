#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
struct TYPE_3__ {scalar_t__ irq_ok; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  interrupt_sleeper; } ;
typedef  TYPE_1__ snd_wavefront_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void
FUNC8 (snd_wavefront_t *dev, 
				  int val, int port, unsigned long timeout)

{
	wait_queue_entry_t wait;

	FUNC2(&wait, current);
	FUNC5(&dev->irq_lock);
	FUNC0(&dev->interrupt_sleeper, &wait);
	dev->irq_ok = 0;
	FUNC3 (val,port);
	FUNC6(&dev->irq_lock);
	while (!dev->irq_ok && FUNC7(jiffies, timeout)) {
		FUNC4(1);
		FUNC1();
	}
}
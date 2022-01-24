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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
struct snd_ymfpci {int /*<<< orphan*/  interrupt_sleep; int /*<<< orphan*/  interrupt_sleep_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct snd_ymfpci *chip)
{
	wait_queue_entry_t wait;
	int loops = 4;

	while (loops-- > 0) {
		if ((FUNC6(chip, YDSXGR_MODE) & 3) == 0)
		 	continue;
		FUNC2(&wait, current);
		FUNC0(&chip->interrupt_sleep, &wait);
		FUNC1(&chip->interrupt_sleep_count);
		FUNC5(FUNC3(50));
		FUNC4(&chip->interrupt_sleep, &wait);
	}
}
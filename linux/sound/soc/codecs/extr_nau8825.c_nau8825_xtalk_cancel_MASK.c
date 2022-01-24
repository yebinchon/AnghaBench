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
struct nau8825 {scalar_t__ xtalk_state; int xtalk_protect; int /*<<< orphan*/  xtalk_work; scalar_t__ xtalk_enable; } ;

/* Variables and functions */
 scalar_t__ NAU8825_XTALK_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC2 (struct nau8825*,int) ; 

__attribute__((used)) static void FUNC3(struct nau8825 *nau8825)
{
	/* If the crosstalk is eanbled and the process is on going,
	 * the driver forces to cancel the crosstalk task and
	 * restores the configuration to original status.
	 */
	if (nau8825->xtalk_enable && nau8825->xtalk_state !=
		NAU8825_XTALK_DONE) {
		FUNC0(&nau8825->xtalk_work);
		FUNC2(nau8825, true);
	}
	/* Reset parameters for cross talk suppression function */
	FUNC1(nau8825);
	nau8825->xtalk_state = NAU8825_XTALK_DONE;
	nau8825->xtalk_protect = false;
}
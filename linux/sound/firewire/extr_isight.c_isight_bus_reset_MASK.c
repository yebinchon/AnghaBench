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
struct isight {int /*<<< orphan*/  mutex; int /*<<< orphan*/  resources; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct isight* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct isight*) ; 
 int /*<<< orphan*/  FUNC3 (struct isight*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fw_unit *unit)
{
	struct isight *isight = FUNC0(&unit->device);

	if (FUNC1(&isight->resources) < 0) {
		FUNC2(isight);

		FUNC4(&isight->mutex);
		FUNC3(isight);
		FUNC5(&isight->mutex);
	}
}
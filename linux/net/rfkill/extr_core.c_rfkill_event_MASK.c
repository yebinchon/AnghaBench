#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct rfkill {TYPE_1__ dev; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  RFKILL_OP_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rfkill*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rfkill *rfkill)
{
	if (!rfkill->registered)
		return;

	FUNC0(&rfkill->dev.kobj, KOBJ_CHANGE);

	/* also send event to /dev/rfkill */
	FUNC1(rfkill, RFKILL_OP_CHANGE);
}
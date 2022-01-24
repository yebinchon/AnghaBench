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
struct TYPE_3__ {unsigned long mask; char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* flagnames ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC2(unsigned long flags)
{
	int i;
	int printed = 0;

	for (i = 0; i < FUNC0(flagnames); i++) {
		if (flags & flagnames[i].mask) {
			if (printed)
				FUNC1(stdout, " ");
			FUNC1(stdout, "%s", flagnames[i].name);
			printed++;
		}
	}
}
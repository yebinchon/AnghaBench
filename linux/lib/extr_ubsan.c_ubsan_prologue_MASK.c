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
struct source_location {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  in_ubsan; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct source_location*) ; 
 int /*<<< orphan*/  report_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct source_location *location,
			unsigned long *flags)
{
	current->in_ubsan++;
	FUNC2(&report_lock, *flags);

	FUNC0("========================================"
		"========================================\n");
	FUNC1("UBSAN: Undefined behaviour in", location);
}
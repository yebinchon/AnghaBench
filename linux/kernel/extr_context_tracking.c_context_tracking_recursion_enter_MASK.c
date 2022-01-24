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
struct TYPE_2__ {int /*<<< orphan*/  recursion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ context_tracking ; 

__attribute__((used)) static bool FUNC3(void)
{
	int recursion;

	recursion = FUNC2(context_tracking.recursion);
	if (recursion == 1)
		return true;

	FUNC0((recursion < 1), "Invalid context tracking recursion value %d\n", recursion);
	FUNC1(context_tracking.recursion);

	return false;
}
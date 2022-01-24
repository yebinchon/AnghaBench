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

/* Variables and functions */
 int /*<<< orphan*/  console_lock_dep_map ; 
 int /*<<< orphan*/  console_sem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long ip)
{
	unsigned long flags;

	FUNC0(&console_lock_dep_map, 1, ip);

	FUNC1(flags);
	FUNC3(&console_sem);
	FUNC2(flags);
}
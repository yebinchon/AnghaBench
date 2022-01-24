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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pager_process ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC1(stdout);
	FUNC1(stderr);
	/* signal EOF to pager */
	FUNC0(1);
	FUNC0(2);
	FUNC2(&pager_process);
}
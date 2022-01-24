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
 int ALLOC_PERIOD ; 
 int CLEANUP_PERIOD ; 
 int /*<<< orphan*/  alloc_dwork ; 
 int /*<<< orphan*/  cleanup_dwork ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
	FUNC1(&alloc_dwork,
		FUNC0(1000 * ALLOC_PERIOD));
	FUNC1(&cleanup_dwork,
		FUNC0(1000 * CLEANUP_PERIOD));

	return 0;
}
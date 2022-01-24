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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ida ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(void)
{
	FUNC0(ida);
	unsigned long i;

	for (i = 0; i < 10000; i++) {
		FUNC1(FUNC4(&ida, 0, 20000, GFP_KERNEL) == i);
	}
	FUNC1(FUNC4(&ida, 5, 30, GFP_KERNEL) < 0);

	for (i = 0; i < 10000; i++) {
		FUNC5(&ida, i);
	}
	FUNC1(FUNC3(&ida));

	FUNC2(&ida);
}
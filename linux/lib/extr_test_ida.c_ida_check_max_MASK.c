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
struct ida {int dummy; } ;

/* Variables and functions */
 unsigned long ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ida*,int) ; 
 unsigned long FUNC1 (struct ida*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ida*) ; 
 int /*<<< orphan*/  FUNC3 (struct ida*) ; 

__attribute__((used)) static void FUNC4(struct ida *ida)
{
	unsigned long i, j;

	for (j = 1; j < 65537; j *= 2) {
		unsigned long base = (1UL << 31) - j;
		for (i = 0; i < j; i++) {
			FUNC0(ida, FUNC1(ida, base, GFP_KERNEL) !=
					base + i);
		}
		FUNC0(ida, FUNC1(ida, base, GFP_KERNEL) !=
				-ENOSPC);
		FUNC2(ida);
		FUNC0(ida, !FUNC3(ida));
	}
}
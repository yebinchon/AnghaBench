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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ida*,int) ; 
 int FUNC1 (struct ida*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ida*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ida*) ; 
 int /*<<< orphan*/  FUNC4 (struct ida*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ida*) ; 

__attribute__((used)) static void FUNC6(struct ida *ida)
{
	int i, id;

	for (i = 0; i < 10000; i++)
		FUNC0(ida, FUNC1(ida, GFP_KERNEL) != i);

	FUNC4(ida, 20);
	FUNC4(ida, 21);
	for (i = 0; i < 3; i++) {
		id = FUNC1(ida, GFP_KERNEL);
		FUNC0(ida, id < 0);
		if (i == 2)
			FUNC0(ida, id != 10000);
	}

	for (i = 0; i < 5000; i++)
		FUNC4(ida, i);

	FUNC0(ida, FUNC2(ida, 5000, GFP_KERNEL) != 10001);
	FUNC3(ida);

	FUNC0(ida, !FUNC5(ida));
}
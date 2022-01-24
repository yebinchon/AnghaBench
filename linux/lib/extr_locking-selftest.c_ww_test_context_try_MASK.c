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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  o ; 
 int /*<<< orphan*/  o2 ; 
 int /*<<< orphan*/  t ; 

__attribute__((used)) static void FUNC5(void)
{
	int ret;

	FUNC1(&t);

	ret = FUNC2(&o, &t);
	FUNC0(ret);

	ret = FUNC3(&o2);
	FUNC0(!ret);
	FUNC4(&o2);
	FUNC4(&o);
}
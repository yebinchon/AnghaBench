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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  z3fold_fs ; 
 int /*<<< orphan*/  z3fold_mnt ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret = 0;

	z3fold_mnt = FUNC2(&z3fold_fs);
	if (FUNC0(z3fold_mnt))
		ret = FUNC1(z3fold_mnt);

	return ret;
}
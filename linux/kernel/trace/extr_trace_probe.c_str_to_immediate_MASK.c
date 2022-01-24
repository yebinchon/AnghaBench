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
 int EINVAL ; 
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,long*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC3(char *str, unsigned long *imm)
{
	if (FUNC0(str[0]))
		return FUNC2(str, 0, imm);
	else if (str[0] == '-')
		return FUNC1(str, 0, (long *)imm);
	else if (str[0] == '+')
		return FUNC1(str + 1, 0, (long *)imm);
	return -EINVAL;
}
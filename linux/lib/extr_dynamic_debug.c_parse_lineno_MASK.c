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
 int EINVAL ; 
 scalar_t__ FUNC1 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static inline int FUNC3(const char *str, unsigned int *val)
{
	FUNC0(str == NULL);
	if (*str == '\0') {
		*val = 0;
		return 0;
	}
	if (FUNC1(str, 10, val) < 0) {
		FUNC2("bad line-number: %s\n", str);
		return -EINVAL;
	}
	return 0;
}
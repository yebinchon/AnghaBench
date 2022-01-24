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
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static inline void
FUNC3(const char *var, const char *value)
{
	if (value) {
		FUNC1(var, value, 1);
		FUNC0("set env: %s=%s\n", var, value);
	} else {
		FUNC2(var);
		FUNC0("unset env: %s\n", var);
	}
}
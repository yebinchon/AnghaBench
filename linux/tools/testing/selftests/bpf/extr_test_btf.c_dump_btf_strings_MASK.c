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
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(const char *strs, __u32 len)
{
	const char *cur = strs;
	int i = 0;

	while (cur < strs + len) {
		FUNC0(stderr, "string #%d: '%s'\n", i, cur);
		cur += FUNC1(cur) + 1;
		i++;
	}
}
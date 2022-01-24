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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char const*,char const*,int) ; 
 int FUNC2 (char const*) ; 

char *FUNC3(const char *root, const char *name, int index)
{
	size_t len = FUNC2(root) + FUNC2(name) + 10;
	char *ret = FUNC0(len);

	FUNC1(ret, len, "%s/%s_%d", root, name, index);

	return ret;
}
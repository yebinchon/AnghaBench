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
typedef  int /*<<< orphan*/  buf ;
typedef  unsigned long __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

int FUNC3(const char *name, size_t namelen, __u32 *res)
{
	unsigned long val;
	char buf[16];

	if (FUNC1(name, '@', namelen) != NULL || namelen >= sizeof(buf))
		return 0;
	FUNC2(buf, name, namelen);
	buf[namelen] = '\0';
	if (FUNC0(buf, 0, &val) != 0)
		return 0;
	*res = val;
	return 1;
}
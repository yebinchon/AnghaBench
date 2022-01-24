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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,char const*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 unsigned long FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *str, unsigned long *_size)
{
	char *endptr;
	unsigned long size;
	unsigned long max_size = FUNC1(USHRT_MAX, sizeof(u64));

	size = FUNC3(str, &endptr, 0);

	do {
		if (*endptr)
			break;

		size = FUNC2(size, sizeof(u64));
		if (!size || size > max_size)
			break;

		*_size = size;
		return 0;

	} while (0);

	FUNC0("callchain: Incorrect stack dump size (max %ld): %s\n",
	       max_size, str);
	return -1;
}
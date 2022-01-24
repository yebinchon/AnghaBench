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
struct tep_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long*,void const*,int) ; 
 unsigned long long FUNC1 (struct tep_handle*,unsigned short) ; 
 unsigned long long FUNC2 (struct tep_handle*,unsigned int) ; 
 unsigned long long FUNC3 (struct tep_handle*,unsigned long long) ; 

unsigned long long FUNC4(struct tep_handle *tep,
				   const void *ptr, int size)
{
	unsigned long long val;

	switch (size) {
	case 1:
		return *(unsigned char *)ptr;
	case 2:
		return FUNC1(tep, *(unsigned short *)ptr);
	case 4:
		return FUNC2(tep, *(unsigned int *)ptr);
	case 8:
		FUNC0(&val, (ptr), sizeof(unsigned long long));
		return FUNC3(tep, val);
	default:
		/* BUG! */
		return 0;
	}
}
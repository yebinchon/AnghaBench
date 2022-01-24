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
 void* FUNC0 (int*,void*) ; 
 int FUNC1 (void*,int,int) ; 

__attribute__((used)) static inline int FUNC2(void *bitmap, int max,
							int start)
{
	int fix = 0, ret, tmpmax;
	bitmap = FUNC0(&fix, bitmap);
	tmpmax = max + fix;
	start += fix;

	ret = FUNC1(bitmap, tmpmax, start) - fix;
	if (ret > max)
		return max;
	return ret;
}
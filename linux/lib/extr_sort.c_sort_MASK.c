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
 int /*<<< orphan*/  _CMP_WRAPPER ; 
 void FUNC0 (void*,size_t,size_t,int /*<<< orphan*/ ,void (*) (void*,void*,int),int (*) (void const*,void const*)) ; 

void FUNC1(void *base, size_t num, size_t size,
	  int (*cmp_func)(const void *, const void *),
	  void (*swap_func)(void *, void *, int size))
{
	return FUNC0(base, num, size, _CMP_WRAPPER, swap_func, cmp_func);
}
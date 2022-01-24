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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int /*<<< orphan*/  KASAN_SHADOW_SCALE_SIZE ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 

void *FUNC3(void *addr, size_t size)
{
	u8 tag = FUNC0(addr);
	void *p = FUNC2(addr);
	void *end = p + size;

	while (p < end && tag == *(u8 *)FUNC1(p))
		p += KASAN_SHADOW_SCALE_SIZE;
	return p;
}
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
 scalar_t__ KASAN_SHADOW_START ; 
 void const* FUNC0 (void*) ; 

__attribute__((used)) static inline bool FUNC1(const void *addr)
{
	return (addr >= FUNC0((void *)KASAN_SHADOW_START));
}
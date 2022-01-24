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
 int /*<<< orphan*/  _RET_IP_ ; 
 void* FUNC0 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,size_t,int,int /*<<< orphan*/ ) ; 

void *FUNC2(void *dest, const void *src, size_t len)
{
	FUNC1((unsigned long)src, len, false, _RET_IP_);
	FUNC1((unsigned long)dest, len, true, _RET_IP_);

	return FUNC0(dest, src, len);
}
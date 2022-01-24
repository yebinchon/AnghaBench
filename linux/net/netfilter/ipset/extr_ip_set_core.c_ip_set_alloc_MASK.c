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
 int GFP_KERNEL ; 
 size_t KMALLOC_MAX_SIZE ; 
 int __GFP_NOWARN ; 
 void* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 void* FUNC2 (size_t) ; 

void *
FUNC3(size_t size)
{
	void *members = NULL;

	if (size < KMALLOC_MAX_SIZE)
		members = FUNC0(size, GFP_KERNEL | __GFP_NOWARN);

	if (members) {
		FUNC1("%p: allocated with kmalloc\n", members);
		return members;
	}

	members = FUNC2(size);
	if (!members)
		return NULL;
	FUNC1("%p: allocated with vmalloc\n", members);

	return members;
}
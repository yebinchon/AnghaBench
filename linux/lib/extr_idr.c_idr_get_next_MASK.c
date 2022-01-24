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
struct idr {int dummy; } ;

/* Variables and functions */
 unsigned long INT_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (struct idr*,unsigned long*) ; 

void *FUNC2(struct idr *idr, int *nextid)
{
	unsigned long id = *nextid;
	void *entry = FUNC1(idr, &id);

	if (FUNC0(id > INT_MAX))
		return NULL;
	*nextid = id;
	return entry;
}
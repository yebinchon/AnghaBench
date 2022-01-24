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
struct char_device_struct {scalar_t__ cdev; } ;

/* Variables and functions */
 struct char_device_struct* FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct char_device_struct*) ; 

void FUNC3(unsigned int major, unsigned int baseminor,
			 unsigned int count, const char *name)
{
	struct char_device_struct *cd;

	cd = FUNC0(major, baseminor, count);
	if (cd && cd->cdev)
		FUNC1(cd->cdev);
	FUNC2(cd);
}
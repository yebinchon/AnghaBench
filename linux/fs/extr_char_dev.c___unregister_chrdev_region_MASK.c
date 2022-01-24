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
struct char_device_struct {unsigned int major; unsigned int baseminor; int minorct; struct char_device_struct* next; } ;

/* Variables and functions */
 struct char_device_struct** chrdevs ; 
 int /*<<< orphan*/  chrdevs_lock ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct char_device_struct *
FUNC3(unsigned major, unsigned baseminor, int minorct)
{
	struct char_device_struct *cd = NULL, **cp;
	int i = FUNC0(major);

	FUNC1(&chrdevs_lock);
	for (cp = &chrdevs[i]; *cp; cp = &(*cp)->next)
		if ((*cp)->major == major &&
		    (*cp)->baseminor == baseminor &&
		    (*cp)->minorct == minorct)
			break;
	if (*cp) {
		cd = *cp;
		*cp = cd->next;
	}
	FUNC2(&chrdevs_lock);
	return cd;
}
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
struct char_device_struct {int /*<<< orphan*/  baseminor; int /*<<< orphan*/  major; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct char_device_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct char_device_struct*) ; 
 struct char_device_struct* FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,char const*) ; 

int FUNC4(dev_t *dev, unsigned baseminor, unsigned count,
			const char *name)
{
	struct char_device_struct *cd;
	cd = FUNC3(0, baseminor, count, name);
	if (FUNC0(cd))
		return FUNC2(cd);
	*dev = FUNC1(cd->major, cd->baseminor);
	return 0;
}
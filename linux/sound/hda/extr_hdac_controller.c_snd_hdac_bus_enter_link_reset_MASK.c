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
struct hdac_bus {int dummy; } ;

/* Variables and functions */
 int AZX_GCTL_RESET ; 
 int /*<<< orphan*/  GCTL ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int FUNC1 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(struct hdac_bus *bus)
{
	unsigned long timeout;

	/* reset controller */
	FUNC2(bus, GCTL, AZX_GCTL_RESET, 0);

	timeout = jiffies + FUNC0(100);
	while ((FUNC1(bus, GCTL) & AZX_GCTL_RESET) &&
	       FUNC3(jiffies, timeout))
		FUNC4(500, 1000);
}
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
 int AZX_CORBCTL_RUN ; 
 int AZX_RBCTL_DMA_EN ; 
 int /*<<< orphan*/  CORBCTL ; 
 int /*<<< orphan*/  RIRBCTL ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int FUNC1 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct hdac_bus *bus)
{
	unsigned long timeout;

	timeout = jiffies + FUNC0(100);
	while ((FUNC1(bus, RIRBCTL) & AZX_RBCTL_DMA_EN)
		&& FUNC2(jiffies, timeout))
		FUNC3(10);

	timeout = jiffies + FUNC0(100);
	while ((FUNC1(bus, CORBCTL) & AZX_CORBCTL_RUN)
		&& FUNC2(jiffies, timeout))
		FUNC3(10);
}
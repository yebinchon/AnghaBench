#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mixart_mgr {TYPE_1__* pci; int /*<<< orphan*/  msg_processed; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned long HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct mixart_mgr *mgr)
{
	unsigned long timeout = jiffies + HZ;
	while (FUNC0(&mgr->msg_processed) > 0) {
		if (FUNC3(jiffies, timeout)) {
			FUNC1(&mgr->pci->dev,
				"mixart: cannot process nonblock events!\n");
			return -EBUSY;
		}
		FUNC2(1);
	}
	return 0;
}
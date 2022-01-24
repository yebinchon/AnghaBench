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
struct tipc_bearer {int /*<<< orphan*/  pt; int /*<<< orphan*/  media_ptr; } ;
struct net_device {int /*<<< orphan*/  tipc_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct tipc_bearer *b)
{
	struct net_device *dev;

	dev = (struct net_device *)FUNC3(b->media_ptr);
	FUNC2(&b->pt);
	FUNC0(dev->tipc_ptr, NULL);
	FUNC4();
	FUNC1(dev);
}
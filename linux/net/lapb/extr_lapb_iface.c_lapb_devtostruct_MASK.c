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
struct net_device {int dummy; } ;
struct lapb_cb {int dummy; } ;

/* Variables and functions */
 struct lapb_cb* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  lapb_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct lapb_cb *FUNC3(struct net_device *dev)
{
	struct lapb_cb *rc;

	FUNC1(&lapb_list_lock);
	rc = FUNC0(dev);
	FUNC2(&lapb_list_lock);

	return rc;
}
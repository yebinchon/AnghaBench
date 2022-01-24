#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* dev; struct TYPE_6__* next; } ;
typedef  TYPE_2__ ax25_dev ;
typedef  int /*<<< orphan*/  ax25_address ;
struct TYPE_5__ {scalar_t__ dev_addr; } ;

/* Variables and functions */
 TYPE_2__* ax25_dev_list ; 
 int /*<<< orphan*/  ax25_dev_lock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

ax25_dev *FUNC3(ax25_address *addr)
{
	ax25_dev *ax25_dev, *res = NULL;

	FUNC1(&ax25_dev_lock);
	for (ax25_dev = ax25_dev_list; ax25_dev != NULL; ax25_dev = ax25_dev->next)
		if (FUNC0(addr, (ax25_address *)ax25_dev->dev->dev_addr) == 0) {
			res = ax25_dev;
		}
	FUNC2(&ax25_dev_lock);

	return res;
}
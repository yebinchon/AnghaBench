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
typedef  int /*<<< orphan*/  u8 ;
struct switchdev_notifier_fdb_info {int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct dsa_switchdev_event_work {TYPE_1__ fdb_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct switchdev_notifier_fdb_info const*,int) ; 

__attribute__((used)) static int
FUNC3(struct dsa_switchdev_event_work *
				  switchdev_work,
				  const struct switchdev_notifier_fdb_info *
				  fdb_info)
{
	FUNC2(&switchdev_work->fdb_info, fdb_info,
	       sizeof(switchdev_work->fdb_info));
	switchdev_work->fdb_info.addr = FUNC1(ETH_ALEN, GFP_ATOMIC);
	if (!switchdev_work->fdb_info.addr)
		return -ENOMEM;
	FUNC0((u8 *)switchdev_work->fdb_info.addr,
			fdb_info->addr);
	return 0;
}
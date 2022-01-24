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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mpls_dev {TYPE_1__* sysctl; } ;
struct ctl_table {int dummy; } ;
struct TYPE_2__ {struct ctl_table* ctl_table_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTM_DELNETCONF ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mpls_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
				       struct mpls_dev *mdev)
{
	struct net *net = FUNC0(dev);
	struct ctl_table *table;

	table = mdev->sysctl->ctl_table_arg;
	FUNC3(mdev->sysctl);
	FUNC1(table);

	FUNC2(net, RTM_DELNETCONF, 0, mdev);
}
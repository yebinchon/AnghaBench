#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  proc_net_devsnmp6; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_4__ {int /*<<< orphan*/ * proc_dir_entry; } ;
struct inet6_dev {TYPE_2__ stats; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct inet6_dev *idev)
{
	struct net *net = FUNC0(idev->dev);
	if (!net->mib.proc_net_devsnmp6)
		return -ENOENT;
	if (!idev->stats.proc_dir_entry)
		return -EINVAL;
	FUNC1(idev->stats.proc_dir_entry);
	idev->stats.proc_dir_entry = NULL;
	return 0;
}
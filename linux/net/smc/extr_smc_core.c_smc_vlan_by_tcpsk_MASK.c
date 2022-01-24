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
struct socket {int /*<<< orphan*/  sk; } ;
struct smc_init_info {void* vlan_id; } ;
struct list_head {struct list_head* next; } ;
struct TYPE_2__ {struct list_head lower; } ;
struct net_device {int lower_level; TYPE_1__ adj_list; } ;
struct dst_entry {struct net_device* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct list_head*) ; 
 scalar_t__ FUNC3 (struct net_device*,struct list_head**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct dst_entry* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct net_device*) ; 

int FUNC8(struct socket *clcsock, struct smc_init_info *ini)
{
	struct dst_entry *dst = FUNC6(clcsock->sk);
	struct net_device *ndev;
	int i, nest_lvl, rc = 0;

	ini->vlan_id = 0;
	if (!dst) {
		rc = -ENOTCONN;
		goto out;
	}
	if (!dst->dev) {
		rc = -ENODEV;
		goto out_rel;
	}

	ndev = dst->dev;
	if (FUNC1(ndev)) {
		ini->vlan_id = FUNC7(ndev);
		goto out_rel;
	}

	FUNC4();
	nest_lvl = ndev->lower_level;
	for (i = 0; i < nest_lvl; i++) {
		struct list_head *lower = &ndev->adj_list.lower;

		if (FUNC2(lower))
			break;
		lower = lower->next;
		ndev = (struct net_device *)FUNC3(ndev, &lower);
		if (FUNC1(ndev)) {
			ini->vlan_id = FUNC7(ndev);
			break;
		}
	}
	FUNC5();

out_rel:
	FUNC0(dst);
out:
	return rc;
}
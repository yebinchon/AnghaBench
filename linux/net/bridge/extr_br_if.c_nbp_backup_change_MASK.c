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
struct net_bridge_port {scalar_t__ br; int /*<<< orphan*/  backup_port; int /*<<< orphan*/  backup_redirected_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENOENT ; 
 struct net_bridge_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_bridge_port*) ; 
 struct net_bridge_port* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct net_bridge_port *p,
		      struct net_device *backup_dev)
{
	struct net_bridge_port *old_backup = FUNC4(p->backup_port);
	struct net_bridge_port *backup_p = NULL;

	FUNC0();

	if (backup_dev) {
		if (!FUNC2(backup_dev))
			return -ENOENT;

		backup_p = FUNC1(backup_dev);
		if (backup_p->br != p->br)
			return -EINVAL;
	}

	if (p == backup_p)
		return -EINVAL;

	if (old_backup == backup_p)
		return 0;

	/* if the backup link is already set, clear it */
	if (old_backup)
		old_backup->backup_redirected_cnt--;

	if (backup_p)
		backup_p->backup_redirected_cnt++;
	FUNC3(p->backup_port, backup_p);

	return 0;
}
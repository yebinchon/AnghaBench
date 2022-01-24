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
struct nfs4_deviceid_node {int /*<<< orphan*/  flags; int /*<<< orphan*/  timestamp_unavailable; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DEVICEID_UNAVAILABLE ; 
 unsigned long PNFS_DEVICE_RETRY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

bool
FUNC4(struct nfs4_deviceid_node *node)
{
	if (FUNC2(NFS_DEVICEID_UNAVAILABLE, &node->flags)) {
		unsigned long start, end;

		end = jiffies;
		start = end - PNFS_DEVICE_RETRY_TIMEOUT;
		if (FUNC3(node->timestamp_unavailable, start, end))
			return true;
		FUNC0(NFS_DEVICEID_UNAVAILABLE, &node->flags);
		FUNC1();
	}
	return false;
}
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
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(struct nfs4_deviceid_node *node)
{
	node->timestamp_unavailable = jiffies;
	FUNC2();
	FUNC0(NFS_DEVICEID_UNAVAILABLE, &node->flags);
	FUNC1();
}
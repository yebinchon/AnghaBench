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
struct ceph_client {int /*<<< orphan*/  mount_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct ceph_client*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ceph_client *client)
{
	int ret;
	unsigned long started = jiffies;  /* note the start time */

	FUNC1("open_session start\n");
	FUNC2(&client->mount_mutex);

	ret = FUNC0(client, started);

	FUNC3(&client->mount_mutex);
	return ret;
}
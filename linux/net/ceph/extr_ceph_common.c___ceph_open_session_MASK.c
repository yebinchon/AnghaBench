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
struct ceph_client {scalar_t__ auth_err; int /*<<< orphan*/  fsid; int /*<<< orphan*/  auth_wq; int /*<<< orphan*/  monc; TYPE_1__* options; } ;
struct TYPE_2__ {unsigned long mount_timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_client*) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct ceph_client*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 long FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC9(struct ceph_client *client, unsigned long started)
{
	unsigned long timeout = client->options->mount_timeout;
	long err;

	/* open session, and wait for mon and osd maps */
	err = FUNC2(&client->monc);
	if (err < 0)
		return err;

	while (!FUNC5(client)) {
		if (timeout && FUNC7(jiffies, started + timeout))
			return -ETIMEDOUT;

		/* wait */
		FUNC4("mount waiting for mon_map\n");
		err = FUNC8(client->auth_wq,
			FUNC5(client) || (client->auth_err < 0),
			FUNC3(timeout));
		if (err < 0)
			return err;
		if (client->auth_err < 0)
			return client->auth_err;
	}

	FUNC6("client%llu fsid %pU\n", FUNC0(client),
		&client->fsid);
	FUNC1(client);

	return 0;
}
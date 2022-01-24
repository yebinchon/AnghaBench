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
struct ceph_connection {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_FLAG_KEEPALIVE_PENDING ; 
 int /*<<< orphan*/  CON_FLAG_WRITE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_connection*) ; 

void FUNC7(struct ceph_connection *con)
{
	FUNC3("con_keepalive %p\n", con);
	FUNC4(&con->mutex);
	FUNC0(con);
	FUNC1(con, CON_FLAG_KEEPALIVE_PENDING);
	FUNC5(&con->mutex);

	if (FUNC2(con, CON_FLAG_WRITE_PENDING) == 0)
		FUNC6(con);
}
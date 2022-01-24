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
struct ceph_connection {char* error_msg; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  in_banner; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_BANNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ceph_connection *con)
{
	if (FUNC1(con->in_banner, CEPH_BANNER, FUNC3(CEPH_BANNER))) {
		FUNC2("connect to %s got bad banner\n",
		       FUNC0(&con->peer_addr));
		con->error_msg = "protocol error, bad banner";
		return -1;
	}
	return 0;
}
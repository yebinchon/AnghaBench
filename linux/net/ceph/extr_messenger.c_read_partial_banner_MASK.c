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
struct ceph_connection {int /*<<< orphan*/  peer_addr_for_me; int /*<<< orphan*/  actual_peer_addr; int /*<<< orphan*/ * in_banner; int /*<<< orphan*/  in_base_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_BANNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ceph_connection*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ceph_connection *con)
{
	int size;
	int end;
	int ret;

	FUNC1("read_partial_banner %p at %d\n", con, con->in_base_pos);

	/* peer's banner */
	size = FUNC3(CEPH_BANNER);
	end = size;
	ret = FUNC2(con, end, size, con->in_banner);
	if (ret <= 0)
		goto out;

	size = sizeof (con->actual_peer_addr);
	end += size;
	ret = FUNC2(con, end, size, &con->actual_peer_addr);
	if (ret <= 0)
		goto out;
	FUNC0(&con->actual_peer_addr);

	size = sizeof (con->peer_addr_for_me);
	end += size;
	ret = FUNC2(con, end, size, &con->peer_addr_for_me);
	if (ret <= 0)
		goto out;
	FUNC0(&con->peer_addr_for_me);

out:
	return ret;
}
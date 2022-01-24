#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ceph_connection {TYPE_2__* sock; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* shutdown ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CON_FLAG_SOCK_CLOSED ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ceph_connection*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ceph_connection *con)
{
	int rc = 0;

	FUNC2("con_close_socket on %p sock %p\n", con, con->sock);
	if (con->sock) {
		rc = con->sock->ops->shutdown(con->sock, SHUT_RDWR);
		FUNC3(con->sock);
		con->sock = NULL;
	}

	/*
	 * Forcibly clear the SOCK_CLOSED flag.  It gets set
	 * independent of the connection mutex, and we could have
	 * received a socket close event before we had the chance to
	 * shut the socket down.
	 */
	FUNC0(con, CON_FLAG_SOCK_CLOSED);

	FUNC1(con);
	return rc;
}
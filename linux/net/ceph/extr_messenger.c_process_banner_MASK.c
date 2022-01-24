#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  in_addr; } ;
struct TYPE_12__ {scalar_t__ nonce; int /*<<< orphan*/  in_addr; } ;
struct ceph_connection {char* error_msg; TYPE_5__* msgr; TYPE_1__ peer_addr_for_me; TYPE_3__ actual_peer_addr; TYPE_3__ peer_addr; } ;
struct TYPE_11__ {TYPE_3__ addr; } ;
struct TYPE_13__ {TYPE_2__ inst; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 struct ceph_connection* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct ceph_connection*,int,struct ceph_connection*,int) ; 
 scalar_t__ FUNC10 (struct ceph_connection*) ; 

__attribute__((used)) static int FUNC11(struct ceph_connection *con)
{
	FUNC4("process_banner on %p\n", con);

	if (FUNC10(con) < 0)
		return -1;

	/*
	 * Make sure the other end is who we wanted.  note that the other
	 * end may not yet know their ip address, so if it's 0.0.0.0, give
	 * them the benefit of the doubt.
	 */
	if (FUNC7(&con->peer_addr, &con->actual_peer_addr,
		   sizeof(con->peer_addr)) != 0 &&
	    !(FUNC0(&con->actual_peer_addr) &&
	      con->actual_peer_addr.nonce == con->peer_addr.nonce)) {
		FUNC9("wrong peer, want %s/%d, got %s/%d\n",
			FUNC3(&con->peer_addr),
			(int)FUNC6(con->peer_addr.nonce),
			FUNC3(&con->actual_peer_addr),
			(int)FUNC6(con->actual_peer_addr.nonce));
		con->error_msg = "wrong peer at address";
		return -1;
	}

	/*
	 * did we learn our address?
	 */
	if (FUNC0(&con->msgr->inst.addr)) {
		int port = FUNC1(&con->msgr->inst.addr);

		FUNC8(&con->msgr->inst.addr.in_addr,
		       &con->peer_addr_for_me.in_addr,
		       sizeof(con->peer_addr_for_me.in_addr));
		FUNC2(&con->msgr->inst.addr, port);
		FUNC5(con->msgr);
		FUNC4("process_banner learned my addr is %s\n",
		     FUNC3(&con->msgr->inst.addr));
	}

	return 0;
}
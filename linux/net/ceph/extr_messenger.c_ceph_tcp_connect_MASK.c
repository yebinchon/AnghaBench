#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_2__* sk; TYPE_1__* ops; } ;
struct sockaddr_storage {int /*<<< orphan*/  ss_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_8__ {struct sockaddr_storage in_addr; } ;
struct ceph_connection {struct socket* sock; TYPE_3__* msgr; TYPE_4__ peer_addr; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  optval ;
struct TYPE_7__ {int /*<<< orphan*/  net; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_lock; int /*<<< orphan*/  sk_allocation; } ;
struct TYPE_5__ {int (* connect ) (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_TCP ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 unsigned int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*,struct ceph_connection*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC14 (struct socket*) ; 
 int /*<<< orphan*/  socket_class ; 
 int FUNC15 (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct ceph_connection *con)
{
	struct sockaddr_storage ss = con->peer_addr.in_addr; /* align */
	struct socket *sock;
	unsigned int noio_flag;
	int ret;

	FUNC0(con->sock);

	/* sock_create_kern() allocates with GFP_KERNEL */
	noio_flag = FUNC9();
	ret = FUNC13(FUNC11(&con->msgr->net), ss.ss_family,
			       SOCK_STREAM, IPPROTO_TCP, &sock);
	FUNC8(noio_flag);
	if (ret)
		return ret;
	sock->sk->sk_allocation = GFP_NOFS;

#ifdef CONFIG_LOCKDEP
	lockdep_set_class(&sock->sk->sk_lock, &socket_class);
#endif

	FUNC12(sock, con);

	FUNC4("connect %s\n", FUNC1(&con->peer_addr));

	FUNC3(con);
	ret = sock->ops->connect(sock, (struct sockaddr *)&ss, sizeof(ss),
				 O_NONBLOCK);
	if (ret == -EINPROGRESS) {
		FUNC4("connect %s EINPROGRESS sk_state = %u\n",
		     FUNC1(&con->peer_addr),
		     sock->sk->sk_state);
	} else if (ret < 0) {
		FUNC10("connect %s error %d\n",
		       FUNC1(&con->peer_addr), ret);
		FUNC14(sock);
		return ret;
	}

	if (FUNC2(FUNC5(con->msgr), TCP_NODELAY)) {
		int optval = 1;

		ret = FUNC6(sock, SOL_TCP, TCP_NODELAY,
					(char *)&optval, sizeof(optval));
		if (ret)
			FUNC10("kernel_setsockopt(TCP_NODELAY) failed: %d",
			       ret);
	}

	con->sock = sock;
	return 0;
}
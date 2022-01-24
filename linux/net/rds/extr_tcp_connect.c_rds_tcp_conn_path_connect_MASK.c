#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/ * s6_addr32; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_scope_id; scalar_t__ sin6_flowinfo; void* sin6_port; TYPE_3__ sin6_addr; void* sin6_family; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
struct rds_tcp_connection {int /*<<< orphan*/  t_conn_path_lock; } ;
struct rds_connection {int c_npaths; TYPE_3__ c_faddr; int /*<<< orphan*/  c_dev_if; TYPE_3__ c_laddr; } ;
struct rds_conn_path {scalar_t__ cp_index; struct rds_tcp_connection* cp_transport_data; struct rds_connection* cp_conn; } ;
typedef  int /*<<< orphan*/  sin6 ;
typedef  int /*<<< orphan*/  sin ;
struct TYPE_5__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;int (* connect ) (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_INET6 ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  RDS_TCP_PORT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_connection*) ; 
 scalar_t__ FUNC5 (struct rds_conn_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,struct rds_conn_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*) ; 
 int FUNC13 (struct socket*,struct sockaddr*,int) ; 
 int FUNC14 (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 

int FUNC15(struct rds_conn_path *cp)
{
	struct socket *sock = NULL;
	struct sockaddr_in6 sin6;
	struct sockaddr_in sin;
	struct sockaddr *addr;
	int addrlen;
	bool isv6;
	int ret;
	struct rds_connection *conn = cp->cp_conn;
	struct rds_tcp_connection *tc = cp->cp_transport_data;

	/* for multipath rds,we only trigger the connection after
	 * the handshake probe has determined the number of paths.
	 */
	if (cp->cp_index > 0 && cp->cp_conn->c_npaths < 2)
		return -EAGAIN;

	FUNC2(&tc->t_conn_path_lock);

	if (FUNC5(cp)) {
		FUNC3(&tc->t_conn_path_lock);
		return 0;
	}
	if (FUNC1(&conn->c_laddr)) {
		ret = FUNC11(FUNC4(conn), PF_INET,
				       SOCK_STREAM, IPPROTO_TCP, &sock);
		isv6 = false;
	} else {
		ret = FUNC11(FUNC4(conn), PF_INET6,
				       SOCK_STREAM, IPPROTO_TCP, &sock);
		isv6 = true;
	}

	if (ret < 0)
		goto out;

	FUNC9(sock);

	if (isv6) {
		sin6.sin6_family = AF_INET6;
		sin6.sin6_addr = conn->c_laddr;
		sin6.sin6_port = 0;
		sin6.sin6_flowinfo = 0;
		sin6.sin6_scope_id = conn->c_dev_if;
		addr = (struct sockaddr *)&sin6;
		addrlen = sizeof(sin6);
	} else {
		sin.sin_family = AF_INET;
		sin.sin_addr.s_addr = conn->c_laddr.s6_addr32[3];
		sin.sin_port = 0;
		addr = (struct sockaddr *)&sin;
		addrlen = sizeof(sin);
	}

	ret = sock->ops->bind(sock, addr, addrlen);
	if (ret) {
		FUNC10("bind failed with %d at address %pI6c\n",
			 ret, &conn->c_laddr);
		goto out;
	}

	if (isv6) {
		sin6.sin6_family = AF_INET6;
		sin6.sin6_addr = conn->c_faddr;
		sin6.sin6_port = FUNC0(RDS_TCP_PORT);
		sin6.sin6_flowinfo = 0;
		sin6.sin6_scope_id = conn->c_dev_if;
		addr = (struct sockaddr *)&sin6;
		addrlen = sizeof(sin6);
	} else {
		sin.sin_family = AF_INET;
		sin.sin_addr.s_addr = conn->c_faddr.s6_addr32[3];
		sin.sin_port = FUNC0(RDS_TCP_PORT);
		addr = (struct sockaddr *)&sin;
		addrlen = sizeof(sin);
	}

	/*
	 * once we call connect() we can start getting callbacks and they
	 * own the socket
	 */
	FUNC8(sock, cp);
	ret = sock->ops->connect(sock, addr, addrlen, O_NONBLOCK);

	FUNC10("connect to address %pI6c returned %d\n", &conn->c_faddr, ret);
	if (ret == -EINPROGRESS)
		ret = 0;
	if (ret == 0) {
		FUNC6(sock);
		sock = NULL;
	} else {
		FUNC7(sock, cp->cp_transport_data);
	}

out:
	FUNC3(&tc->t_conn_path_lock);
	if (sock)
		FUNC12(sock);
	return ret;
}
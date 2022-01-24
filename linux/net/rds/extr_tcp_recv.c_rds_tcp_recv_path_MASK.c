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
struct socket {int /*<<< orphan*/  sk; } ;
struct rds_tcp_connection {struct socket* t_sock; } ;
struct rds_conn_path {int /*<<< orphan*/  cp_index; struct rds_tcp_connection* cp_transport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rds_conn_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct rds_tcp_connection*,struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct rds_conn_path *cp)
{
	struct rds_tcp_connection *tc = cp->cp_transport_data;
	struct socket *sock = tc->t_sock;
	int ret = 0;

	FUNC2("recv worker path [%d] tc %p sock %p\n",
		 cp->cp_index, tc, sock);

	FUNC0(sock->sk);
	ret = FUNC1(cp, GFP_KERNEL);
	FUNC3(sock->sk);

	return ret;
}
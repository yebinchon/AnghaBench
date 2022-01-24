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
struct tipc_topsrv {int dummy; } ;
struct tipc_subscr {int dummy; } ;
struct tipc_conn {TYPE_1__* sock; struct tipc_topsrv* server; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; int /*<<< orphan*/ * msg_name; } ;
struct kvec {int iov_len; struct tipc_subscr* iov_base; } ;
typedef  int /*<<< orphan*/  s ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_conn*) ; 
 int FUNC5 (struct tipc_topsrv*,struct tipc_conn*,struct tipc_subscr*) ; 

__attribute__((used)) static int FUNC6(struct tipc_conn *con)
{
	struct tipc_topsrv *srv = con->server;
	struct sock *sk = con->sock->sk;
	struct msghdr msg = {};
	struct tipc_subscr s;
	struct kvec iov;
	int ret;

	iov.iov_base = &s;
	iov.iov_len = sizeof(s);
	msg.msg_name = NULL;
	FUNC0(&msg.msg_iter, READ, &iov, 1, iov.iov_len);
	ret = FUNC3(con->sock, &msg, MSG_DONTWAIT);
	if (ret == -EWOULDBLOCK)
		return -EWOULDBLOCK;
	if (ret == sizeof(s)) {
		FUNC1(&sk->sk_callback_lock);
		ret = FUNC5(srv, con, &s);
		FUNC2(&sk->sk_callback_lock);
	}
	if (ret < 0)
		FUNC4(con);

	return ret;
}
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
struct socket {TYPE_1__* ops; } ;
struct sock {struct socket* sk_socket; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;
struct kvec {int dummy; } ;
struct TYPE_2__ {int (* sendmsg_locked ) (struct sock*,struct msghdr*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*) ; 
 int FUNC2 (struct sock*,struct msghdr*,size_t) ; 
 int FUNC3 (struct sock*,struct msghdr*,int /*<<< orphan*/ ) ; 

int FUNC4(struct sock *sk, struct msghdr *msg,
			  struct kvec *vec, size_t num, size_t size)
{
	struct socket *sock = sk->sk_socket;

	if (!sock->ops->sendmsg_locked)
		return FUNC2(sk, msg, size);

	FUNC0(&msg->msg_iter, WRITE, vec, num, size);

	return sock->ops->sendmsg_locked(sk, msg, FUNC1(msg));
}
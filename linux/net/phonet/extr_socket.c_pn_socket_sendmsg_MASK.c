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
struct socket {struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int (* sendmsg ) (struct sock*,struct msghdr*,size_t) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct socket*) ; 
 int FUNC1 (struct sock*,struct msghdr*,size_t) ; 

__attribute__((used)) static int FUNC2(struct socket *sock, struct msghdr *m,
			     size_t total_len)
{
	struct sock *sk = sock->sk;

	if (FUNC0(sock))
		return -EAGAIN;

	return sk->sk_prot->sendmsg(sk, m, total_len);
}
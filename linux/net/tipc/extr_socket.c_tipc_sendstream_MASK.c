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
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct socket*,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct msghdr *m, size_t dsz)
{
	struct sock *sk = sock->sk;
	int ret;

	FUNC1(sk);
	ret = FUNC0(sock, m, dsz);
	FUNC2(sk);

	return ret;
}
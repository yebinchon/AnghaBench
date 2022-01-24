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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sock*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct sockaddr *uaddr,
			    int addr_len)
{
	struct sock *sk = sock->sk;
	char name[sizeof(uaddr->sa_data) + 1];

	/*
	 *	Check legality
	 */

	if (addr_len != sizeof(struct sockaddr))
		return -EINVAL;
	/* uaddr->sa_data comes from the userspace, it's not guaranteed to be
	 * zero-terminated.
	 */
	FUNC0(name, uaddr->sa_data, sizeof(uaddr->sa_data));
	name[sizeof(uaddr->sa_data)] = 0;

	return FUNC1(sk, name, 0, FUNC2(sk)->num);
}
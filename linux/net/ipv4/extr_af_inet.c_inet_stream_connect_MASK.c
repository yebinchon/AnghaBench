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
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct socket*,struct sockaddr*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct socket *sock, struct sockaddr *uaddr,
			int addr_len, int flags)
{
	int err;

	FUNC1(sock->sk);
	err = FUNC0(sock, uaddr, addr_len, flags, 0);
	FUNC2(sock->sk);
	return err;
}
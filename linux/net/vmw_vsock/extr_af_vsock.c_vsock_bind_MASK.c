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
struct sockaddr_vm {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sock*,struct sockaddr_vm*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sockaddr*,int,struct sockaddr_vm**) ; 

__attribute__((used)) static int
FUNC4(struct socket *sock, struct sockaddr *addr, int addr_len)
{
	int err;
	struct sock *sk;
	struct sockaddr_vm *vm_addr;

	sk = sock->sk;

	if (FUNC3(addr, addr_len, &vm_addr) != 0)
		return -EINVAL;

	FUNC1(sk);
	err = FUNC0(sk, vm_addr);
	FUNC2(sk);

	return err;
}
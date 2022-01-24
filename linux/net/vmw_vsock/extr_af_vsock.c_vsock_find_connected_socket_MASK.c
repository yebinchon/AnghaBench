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
struct sockaddr_vm {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 struct sock* FUNC0 (struct sockaddr_vm*,struct sockaddr_vm*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vsock_table_lock ; 

struct sock *FUNC4(struct sockaddr_vm *src,
					 struct sockaddr_vm *dst)
{
	struct sock *sk;

	FUNC2(&vsock_table_lock);
	sk = FUNC0(src, dst);
	if (sk)
		FUNC1(sk);

	FUNC3(&vsock_table_lock);

	return sk;
}
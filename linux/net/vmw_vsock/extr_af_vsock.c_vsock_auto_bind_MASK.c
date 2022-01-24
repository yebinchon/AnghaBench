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
struct vsock_sock {int /*<<< orphan*/  local_addr; } ;
struct sockaddr_vm {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMADDR_CID_ANY ; 
 int /*<<< orphan*/  VMADDR_PORT_ANY ; 
 int FUNC0 (struct sock*,struct sockaddr_vm*) ; 
 struct sock* FUNC1 (struct vsock_sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vsock_sock *vsk)
{
	struct sock *sk = FUNC1(vsk);
	struct sockaddr_vm local_addr;

	if (FUNC2(&vsk->local_addr))
		return 0;
	FUNC3(&local_addr, VMADDR_CID_ANY, VMADDR_PORT_ANY);
	return FUNC0(sk, &local_addr);
}
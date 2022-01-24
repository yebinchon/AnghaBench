#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct vsock_sock {int /*<<< orphan*/  local_addr; } ;
struct sockaddr_vm {scalar_t__ svm_cid; } ;
struct sock {TYPE_1__* sk_socket; } ;
struct TYPE_4__ {scalar_t__ (* get_local_cid ) () ;} ;
struct TYPE_3__ {int type; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
#define  SOCK_DGRAM 129 
#define  SOCK_STREAM 128 
 scalar_t__ VMADDR_CID_ANY ; 
 int FUNC0 (struct vsock_sock*,struct sockaddr_vm*) ; 
 int FUNC1 (struct vsock_sock*,struct sockaddr_vm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_2__* transport ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct vsock_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  vsock_table_lock ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sockaddr_vm *addr)
{
	struct vsock_sock *vsk = FUNC6(sk);
	u32 cid;
	int retval;

	/* First ensure this socket isn't already bound. */
	if (FUNC5(&vsk->local_addr))
		return -EINVAL;

	/* Now bind to the provided address or select appropriate values if
	 * none are provided (VMADDR_CID_ANY and VMADDR_PORT_ANY).  Note that
	 * like AF_INET prevents binding to a non-local IP address (in most
	 * cases), we only allow binding to the local CID.
	 */
	cid = transport->get_local_cid();
	if (addr->svm_cid != cid && addr->svm_cid != VMADDR_CID_ANY)
		return -EADDRNOTAVAIL;

	switch (sk->sk_socket->type) {
	case SOCK_STREAM:
		FUNC2(&vsock_table_lock);
		retval = FUNC1(vsk, addr);
		FUNC3(&vsock_table_lock);
		break;

	case SOCK_DGRAM:
		retval = FUNC0(vsk, addr);
		break;

	default:
		retval = -EINVAL;
		break;
	}

	return retval;
}
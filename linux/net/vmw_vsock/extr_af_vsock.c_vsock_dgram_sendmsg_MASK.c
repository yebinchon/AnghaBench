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
struct sockaddr_vm {scalar_t__ svm_cid; int /*<<< orphan*/  svm_port; } ;
struct vsock_sock {struct sockaddr_vm remote_addr; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int dummy; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_namelen; scalar_t__ msg_name; } ;
struct TYPE_2__ {scalar_t__ (* get_local_cid ) () ;int (* dgram_enqueue ) (struct vsock_sock*,struct sockaddr_vm*,struct msghdr*,size_t) ;int /*<<< orphan*/  (* dgram_allow ) (scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int MSG_OOB ; 
 scalar_t__ SS_CONNECTED ; 
 scalar_t__ VMADDR_CID_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vsock_sock*,struct sockaddr_vm*,struct msghdr*,size_t) ; 
 TYPE_1__* transport ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_vm*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,struct sockaddr_vm**) ; 
 int FUNC8 (struct vsock_sock*) ; 
 struct vsock_sock* FUNC9 (struct sock*) ; 

__attribute__((used)) static int FUNC10(struct socket *sock, struct msghdr *msg,
			       size_t len)
{
	int err;
	struct sock *sk;
	struct vsock_sock *vsk;
	struct sockaddr_vm *remote_addr;

	if (msg->msg_flags & MSG_OOB)
		return -EOPNOTSUPP;

	/* For now, MSG_DONTWAIT is always assumed... */
	err = 0;
	sk = sock->sk;
	vsk = FUNC9(sk);

	FUNC0(sk);

	err = FUNC8(vsk);
	if (err)
		goto out;


	/* If the provided message contains an address, use that.  Otherwise
	 * fall back on the socket's remote handle (if it has been connected).
	 */
	if (msg->msg_name &&
	    FUNC7(msg->msg_name, msg->msg_namelen,
			    &remote_addr) == 0) {
		/* Ensure this address is of the right type and is a valid
		 * destination.
		 */

		if (remote_addr->svm_cid == VMADDR_CID_ANY)
			remote_addr->svm_cid = transport->get_local_cid();

		if (!FUNC6(remote_addr)) {
			err = -EINVAL;
			goto out;
		}
	} else if (sock->state == SS_CONNECTED) {
		remote_addr = &vsk->remote_addr;

		if (remote_addr->svm_cid == VMADDR_CID_ANY)
			remote_addr->svm_cid = transport->get_local_cid();

		/* XXX Should connect() or this function ensure remote_addr is
		 * bound?
		 */
		if (!FUNC6(&vsk->remote_addr)) {
			err = -EINVAL;
			goto out;
		}
	} else {
		err = -EINVAL;
		goto out;
	}

	if (!transport->dgram_allow(remote_addr->svm_cid,
				    remote_addr->svm_port)) {
		err = -EINVAL;
		goto out;
	}

	err = transport->dgram_enqueue(vsk, remote_addr, msg, len);

out:
	FUNC1(sk);
	return err;
}
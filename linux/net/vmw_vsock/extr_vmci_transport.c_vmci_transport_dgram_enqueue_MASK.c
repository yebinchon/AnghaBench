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
struct TYPE_2__ {int /*<<< orphan*/  svm_port; int /*<<< orphan*/  svm_cid; } ;
struct vsock_sock {TYPE_1__ local_addr; } ;
struct vmci_datagram {size_t payload_size; void* src; void* dst; } ;
struct sockaddr_vm {int /*<<< orphan*/  svm_port; int /*<<< orphan*/  svm_cid; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct vmci_datagram*) ; 
 size_t VMCI_MAX_DG_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_datagram*) ; 
 struct vmci_datagram* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct msghdr*,size_t) ; 
 int FUNC4 (struct vmci_datagram*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vsock_sock*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(
	struct vsock_sock *vsk,
	struct sockaddr_vm *remote_addr,
	struct msghdr *msg,
	size_t len)
{
	int err;
	struct vmci_datagram *dg;

	if (len > VMCI_MAX_DG_PAYLOAD_SIZE)
		return -EMSGSIZE;

	if (!FUNC6(vsk, remote_addr->svm_cid))
		return -EPERM;

	/* Allocate a buffer for the user's message and our packet header. */
	dg = FUNC2(len + sizeof(*dg), GFP_KERNEL);
	if (!dg)
		return -ENOMEM;

	FUNC3(FUNC0(dg), msg, len);

	dg->dst = FUNC5(remote_addr->svm_cid,
				   remote_addr->svm_port);
	dg->src = FUNC5(vsk->local_addr.svm_cid,
				   vsk->local_addr.svm_port);
	dg->payload_size = len;

	err = FUNC4(dg);
	FUNC1(dg);
	if (err < 0)
		return FUNC7(err);

	return err - sizeof(*dg);
}
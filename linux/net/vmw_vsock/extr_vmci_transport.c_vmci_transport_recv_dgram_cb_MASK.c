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
struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  context; } ;
struct vmci_datagram {TYPE_1__ src; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t FUNC0 (struct vmci_datagram*) ; 
 int VMCI_ERROR_NO_ACCESS ; 
 int VMCI_ERROR_NO_MEM ; 
 int VMCI_SUCCESS ; 
 struct sk_buff* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vmci_datagram*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct vsock_sock*,int /*<<< orphan*/ ) ; 
 struct vsock_sock* FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(void *data, struct vmci_datagram *dg)
{
	struct sock *sk;
	size_t size;
	struct sk_buff *skb;
	struct vsock_sock *vsk;

	sk = (struct sock *)data;

	/* This handler is privileged when this module is running on the host.
	 * We will get datagrams from all endpoints (even VMs that are in a
	 * restricted context). If we get one from a restricted context then
	 * the destination socket must be trusted.
	 *
	 * NOTE: We access the socket struct without holding the lock here.
	 * This is ok because the field we are interested is never modified
	 * outside of the create and destruct socket functions.
	 */
	vsk = FUNC7(sk);
	if (!FUNC6(vsk, dg->src.context))
		return VMCI_ERROR_NO_ACCESS;

	size = FUNC0(dg);

	/* Attach the packet to the socket's receive queue as an sk_buff. */
	skb = FUNC1(size, GFP_ATOMIC);
	if (!skb)
		return VMCI_ERROR_NO_MEM;

	/* sk_receive_skb() will do a sock_put(), so hold here. */
	FUNC5(sk);
	FUNC4(skb, size);
	FUNC2(skb->data, dg, size);
	FUNC3(sk, skb, 0);

	return VMCI_SUCCESS;
}
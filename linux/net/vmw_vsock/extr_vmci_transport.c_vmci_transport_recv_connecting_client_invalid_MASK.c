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
struct vsock_sock {int sent_request; int ignore_connecting_rst; } ;
struct vmci_transport_packet {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_pair_size; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct vsock_sock*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 struct vsock_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static int
FUNC4(struct sock *sk,
					      struct vmci_transport_packet *pkt)
{
	int err = 0;
	struct vsock_sock *vsk = FUNC3(sk);

	if (vsk->sent_request) {
		vsk->sent_request = false;
		vsk->ignore_connecting_rst = true;

		err = FUNC2(
			sk, FUNC0(vsk)->queue_pair_size);
		if (err < 0)
			err = FUNC1(err);
		else
			err = 0;

	}

	return err;
}
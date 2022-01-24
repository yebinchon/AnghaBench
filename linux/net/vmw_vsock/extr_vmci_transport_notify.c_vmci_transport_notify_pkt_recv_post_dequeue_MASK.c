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
struct vmci_transport_recv_notify_data {scalar_t__ consume_head; } ;
struct sock {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ consume_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vsock_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  consume_q_generation ; 
 TYPE_1__* FUNC1 (struct vsock_sock*) ; 
 int FUNC2 (struct sock*) ; 
 struct vsock_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static int
FUNC4(
				struct sock *sk,
				size_t target,
				ssize_t copied,
				bool data_read,
				struct vmci_transport_recv_notify_data *data)
{
	struct vsock_sock *vsk;
	int err;

	vsk = FUNC3(sk);
	err = 0;

	if (data_read) {
#if defined(VSOCK_OPTIMIZATION_WAITING_NOTIFY)
		/* Detect a wrap-around to maintain queue generation.  Note
		 * that this is safe since we hold the socket lock across the
		 * two queue pair operations.
		 */
		if (copied >=
			vmci_trans(vsk)->consume_size - data->consume_head)
			PKT_FIELD(vsk, consume_q_generation)++;
#endif

		err = FUNC2(sk);
		if (err < 0)
			return err;

	}
	return err;
}
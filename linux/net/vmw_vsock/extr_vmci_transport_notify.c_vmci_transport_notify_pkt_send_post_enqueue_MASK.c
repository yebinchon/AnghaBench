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
struct vsock_sock {int peer_shutdown; } ;
struct vmci_transport_send_notify_data {scalar_t__ produce_tail; } ;
struct sock {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ produce_size; } ;

/* Variables and functions */
 int FUNC0 (struct vsock_sock*,int /*<<< orphan*/ ) ; 
 int RCV_SHUTDOWN ; 
 int VMCI_TRANSPORT_MAX_DGRAM_RESENDS ; 
 int /*<<< orphan*/  peer_waiting_read ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sock*) ; 
 int /*<<< orphan*/  produce_q_generation ; 
 TYPE_1__* FUNC2 (struct vsock_sock*) ; 
 scalar_t__ FUNC3 (struct vsock_sock*) ; 
 int FUNC4 (struct sock*) ; 
 struct vsock_sock* FUNC5 (struct sock*) ; 

__attribute__((used)) static int
FUNC6(
				struct sock *sk,
				ssize_t written,
				struct vmci_transport_send_notify_data *data)
{
	int err = 0;
	struct vsock_sock *vsk;
	bool sent_wrote = false;
	int retries = 0;

	vsk = FUNC5(sk);

#if defined(VSOCK_OPTIMIZATION_WAITING_NOTIFY)
	/* Detect a wrap-around to maintain queue generation.  Note that this
	 * is safe since we hold the socket lock across the two queue pair
	 * operations.
	 */
	if (written >= vmci_trans(vsk)->produce_size - data->produce_tail)
		PKT_FIELD(vsk, produce_q_generation)++;

#endif

	if (FUNC3(vsk)) {
		/* Notify the peer that we have written, retrying the send on
		 * failure up to our maximum value. See the XXX comment for the
		 * corresponding piece of code in StreamRecvmsg() for potential
		 * improvements.
		 */
		while (!(vsk->peer_shutdown & RCV_SHUTDOWN) &&
		       !sent_wrote &&
		       retries < VMCI_TRANSPORT_MAX_DGRAM_RESENDS) {
			err = FUNC4(sk);
			if (err >= 0)
				sent_wrote = true;

			retries++;
		}

		if (retries >= VMCI_TRANSPORT_MAX_DGRAM_RESENDS) {
			FUNC1("%p unable to send wrote notify to peer\n", sk);
			return err;
		} else {
#if defined(VSOCK_OPTIMIZATION_WAITING_NOTIFY)
			PKT_FIELD(vsk, peer_waiting_read) = false;
#endif
		}
	}
	return err;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct vmci_transport {int /*<<< orphan*/  lock; int /*<<< orphan*/  sk; int /*<<< orphan*/  qp_handle; } ;
struct vmci_event_payload_qp {int /*<<< orphan*/  handle; } ;
struct vmci_event_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vmci_event_payload_qp* FUNC4 (struct vmci_event_data const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(u32 sub_id,
					  const struct vmci_event_data *e_data,
					  void *client_data)
{
	struct vmci_transport *trans = client_data;
	const struct vmci_event_payload_qp *e_payload;

	e_payload = FUNC4(e_data);

	/* XXX This is lame, we should provide a way to lookup sockets by
	 * qp_handle.
	 */
	if (FUNC6(e_payload->handle) ||
	    !FUNC5(trans->qp_handle, e_payload->handle))
		return;

	/* We don't ask for delayed CBs when we subscribe to this event (we
	 * pass 0 as flags to vmci_event_subscribe()).  VMCI makes no
	 * guarantees in that case about what context we might be running in,
	 * so it could be BH or process, blockable or non-blockable.  So we
	 * need to account for all possible contexts here.
	 */
	FUNC2(&trans->lock);
	if (!trans->sk)
		goto out;

	/* Apart from here, trans->lock is only grabbed as part of sk destruct,
	 * where trans->sk isn't locked.
	 */
	FUNC0(trans->sk);

	FUNC7(trans->sk);

	FUNC1(trans->sk);
 out:
	FUNC3(&trans->lock);
}